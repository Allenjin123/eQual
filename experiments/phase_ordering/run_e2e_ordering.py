#!/usr/bin/env python3
"""
End-to-End Pass Ordering Validation for Hexagon MLIR Backend.

This script demonstrates that the e-graph framework's optimal pass ordering
produces measurably different (and better) code when applied to the REAL
Hexagon MLIR pipeline.

Workflow:
  1. Use the e-graph + ILP framework to compute optimal orderings
  2. Compile MLIR test kernels through the real pipeline with:
     (a) Default pass ordering
     (b) E-graph-optimized ordering (fusion-first)
     (c) Worst-case ordering (tiling-first, fusion-last)
  3. Run compiled kernels on Hexagon v73 simulator
  4. Compare cycle counts

Prerequisites:
  - Built Triton + Hexagon backend (pip install -e)
  - Hexagon SDK with simulator: set HEXAGON_TOOLS env var
  - Test MLIR inputs in test/python/mlir/

Usage:
  python run_e2e_ordering.py [--dry-run] [--orderings-only]
"""

import argparse
import json
import os
import subprocess
import sys
import tempfile
import time
from pathlib import Path
from dataclasses import dataclass

# Add parent for eval_experiments imports
sys.path.insert(0, os.path.dirname(__file__))

from eval_experiments import (
    HEXAGON_DEPS,
    HEXAGON_PASSES,
    extract_with_ilp,
    find_commutative_pairs,
    is_valid_ordering,
)

# ============================================================
# Configuration
# ============================================================

REPO_ROOT = Path(__file__).resolve().parent.parent.parent / "hexagon-mlir"
TEST_DIR = REPO_ROOT / "test" / "python" / "mlir"
HW_EVAL_DIR = Path(__file__).resolve().parent / "hw_eval"

# Hexagon tools
HEXAGON_TOOLS = os.environ.get(
    "HEXAGON_TOOLS",
    str(Path(__file__).resolve().parent.parent.parent
        / "Hexagon_SDK" / "6.5.0.0" / "tools" / "HEXAGON_Tools" / "19.0.07" / "Tools"),
)
HEXAGON_SIM = os.path.join(HEXAGON_TOOLS, "bin", "hexagon-sim")
HEXAGON_CC = os.path.join(HEXAGON_TOOLS, "bin", "hexagon-clang")

# Phase 3 reorderable passes
REORDERABLE_PASSES = ["HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads"]

# Cost models for ILP
COST_MODELS = {
    "hw-calibrated": {
        "HoistScalarOps": 5.0,
        "HexagonFusion": 3.0,
        "VTCMTiling": 2.0,
        "HexagonSlicing": 1.5,
        "HexagonTiling": 1.0,
        "ScheduleMatmulHVX": 0.5,
        "LICM": 0.3,
    },
    "fusion-first": {
        "HexagonFusion": 3.0,
        "VTCMTiling": 0.5,
    },
    "vtcm-first": {
        "VTCMTiling": 3.0,
        "HexagonFusion": 1.5,
        "HexagonTiling": 0.5,
    },
}


@dataclass
class OrderingConfig:
    """A named pass ordering configuration for the Phase 3 window."""
    name: str
    phase3_order: list  # Order of reorderable passes
    description: str


def compute_orderings():
    """Use ILP extraction to find optimal orderings under different cost models."""
    orderings = {}

    # Default ordering (as in LinalgToLLVMPass.cpp)
    orderings["default"] = OrderingConfig(
        name="default",
        phase3_order=["HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads"],
        description="Default ordering from LinalgToLLVMPass.cpp",
    )

    # ILP-optimal under each cost model
    for model_name, weights in COST_MODELS.items():
        full_ordering, cost = extract_with_ilp(HEXAGON_PASSES, HEXAGON_DEPS, weights)
        if full_ordering is None:
            print(f"  WARNING: ILP failed for {model_name}")
            continue

        # Extract just the Phase 3 reorderable passes in their ILP-determined order
        phase3 = [p for p in full_ordering if p in REORDERABLE_PASSES]
        orderings[model_name] = OrderingConfig(
            name=model_name,
            phase3_order=phase3,
            description=f"ILP-optimal under {model_name} cost model (cost={cost:.1f})",
        )

    # Adversarial: reverse the hw-calibrated optimal (worst case)
    if "hw-calibrated" in orderings:
        rev = list(reversed(orderings["hw-calibrated"].phase3_order))
        orderings["worst-case"] = OrderingConfig(
            name="worst-case",
            phase3_order=rev,
            description="Reverse of hw-calibrated optimal (adversarial worst case)",
        )

    return orderings


def ordering_to_option_string(phase3_order):
    """Convert a Phase 3 ordering to the phaseOrdering option string."""
    return ",".join(phase3_order)


# ============================================================
# MLIR Compilation (requires built backend)
# ============================================================

def _make_options(ordering_config):
    """Build compilation options with the given phase ordering.

    Constructs the full options map from HexagonOptions defaults (matching the
    production compiler path), then overrides the phaseOrdering field.
    """
    # Import here to keep module-level imports light
    sys.path.insert(0, str(REPO_ROOT / "qcom_hexagon_backend" / "backend"))
    from hexagon_options import HexagonOptions

    defaults = HexagonOptions()
    opts = {k: str(v) for k, v in defaults.__dict__.items()}
    opts["phaseOrdering"] = ordering_to_option_string(ordering_config.phase3_order)
    return opts


def compile_mlir_with_ordering(mlir_input_path, ordering_config, output_dir):
    """
    Compile an MLIR input through the Hexagon backend with a specific
    Phase 3 pass ordering. Returns path to compiled object file.

    This function requires the Triton + Hexagon backend to be built and
    installed (pip install -e).
    """
    try:
        from triton._C.libtriton import ir, qcom_hexagon_backend
    except ImportError:
        return None  # Backend not built

    output_path = Path(output_dir) / f"{ordering_config.name}.o"
    mlir_text = Path(mlir_input_path).read_text()

    context = ir.context()
    qcom_hexagon_backend.load_dialects(context)
    mlir_mod = qcom_hexagon_backend.parse_mlir_module_from_str(mlir_text, context)

    try:
        mods = qcom_hexagon_backend.translate_linalg_to_obj(mlir_mod, _make_options(ordering_config))
        output_path.write_bytes(bytes(mods[0]))
        return str(output_path)
    except Exception as e:
        print(f"  ERROR compiling with ordering {ordering_config.name}: {e}")
        return None


def compile_mlir_to_llvmir(mlir_input_path, ordering_config, output_dir):
    """
    Compile MLIR to LLVM IR (textual) with a specific ordering.
    Useful for inspecting the generated code without running on simulator.
    """
    try:
        from triton._C.libtriton import ir, qcom_hexagon_backend
    except ImportError:
        return None

    output_path = Path(output_dir) / f"{ordering_config.name}.ll"
    mlir_text = Path(mlir_input_path).read_text()

    context = ir.context()
    qcom_hexagon_backend.load_dialects(context)
    mlir_mod = qcom_hexagon_backend.parse_mlir_module_from_str(mlir_text, context)

    try:
        llir = qcom_hexagon_backend.translate_linalg_to_llvmir(mlir_mod, _make_options(ordering_config))
        output_path.write_text(llir)
        return str(output_path)
    except Exception as e:
        print(f"  ERROR generating LLVM IR for {ordering_config.name}: {e}")
        return None


# ============================================================
# Simulator execution
# ============================================================

def run_on_simulator(obj_path, timeout=60):
    """Run compiled object on Hexagon v73 simulator and extract cycle count."""
    if not os.path.isfile(HEXAGON_SIM):
        return None

    try:
        result = subprocess.run(
            [HEXAGON_SIM, "-mv73", "--simulated_returnval", obj_path],
            capture_output=True, text=True, timeout=timeout,
        )
        # Parse cycle count from simulator output
        for line in result.stdout.split("\n"):
            if "pcycles" in line.lower() or "RESULT:" in line:
                return line.strip()
        return result.stdout[:500]
    except (subprocess.TimeoutExpired, FileNotFoundError) as e:
        return f"ERROR: {e}"


# ============================================================
# Analysis
# ============================================================

def analyze_orderings(orderings):
    """Print analysis of ordering differences."""
    print("\n" + "=" * 70)
    print("ORDERING ANALYSIS")
    print("=" * 70)

    # Commutative pairs
    comm_pairs = find_commutative_pairs(HEXAGON_PASSES, HEXAGON_DEPS)
    reorderable_in_phase3 = [
        (a, b) for a, b in comm_pairs
        if a in REORDERABLE_PASSES and b in REORDERABLE_PASSES
    ]

    print(f"\nReorderable pass pairs in Phase 3 window: {len(reorderable_in_phase3)}")
    for a, b in reorderable_in_phase3:
        print(f"  {a} <-> {b}")

    print(f"\nTotal orderings computed: {len(orderings)}")
    for name, config in orderings.items():
        print(f"\n  [{name}] {config.description}")
        print(f"    Phase 3 order: {' → '.join(config.phase3_order)}")

        # Check key: where is HexagonFusion relative to VTCMTiling?
        try:
            fusion_pos = config.phase3_order.index("HexagonFusion")
            vtcm_pos = config.phase3_order.index("VTCMTiling")
            if fusion_pos < vtcm_pos:
                print(f"    Key decision: Fusion BEFORE VTCM tiling (fusion-first)")
            else:
                print(f"    Key decision: VTCM tiling BEFORE Fusion (vtcm-first)")
        except ValueError:
            pass

    # Show differences between orderings
    print("\n--- Pairwise Differences ---")
    names = list(orderings.keys())
    for i, a in enumerate(names):
        for b in names[i+1:]:
            diff = orderings[a].phase3_order != orderings[b].phase3_order
            status = "DIFFERENT" if diff else "SAME"
            print(f"  {a} vs {b}: {status}")


def generate_results_table(orderings, results):
    """Generate a results comparison table."""
    print("\n" + "=" * 70)
    print("END-TO-END RESULTS")
    print("=" * 70)

    header = f"{'Ordering':<20} {'Phase 3 Order':<50} {'Cycles':>10}"
    print(header)
    print("-" * len(header))

    for name, config in orderings.items():
        order_str = " → ".join(config.phase3_order)
        cycles = results.get(name, "N/A")
        print(f"{name:<20} {order_str:<50} {str(cycles):>10}")


# ============================================================
# Main
# ============================================================

def main():
    parser = argparse.ArgumentParser(
        description="End-to-end pass ordering validation for Hexagon MLIR"
    )
    parser.add_argument(
        "--dry-run", action="store_true",
        help="Only compute orderings, don't compile or run"
    )
    parser.add_argument(
        "--orderings-only", action="store_true",
        help="Print ordering analysis and exit"
    )
    parser.add_argument(
        "--mlir-input", type=str, nargs="+",
        default=[
            str(TEST_DIR / "hexkl_linalg_matmul" / "input.mlir"),
            str(TEST_DIR / "add_2d_kernel" / "input.mlir"),
        ],
        help="Path(s) to MLIR test input(s). Matmul exercises fusion+tiling."
    )
    parser.add_argument(
        "--output-dir", type=str,
        default=str(Path(__file__).resolve().parent / "hw_eval" / "e2e_results"),
        help="Output directory for compiled artifacts"
    )
    args = parser.parse_args()

    print("=" * 70)
    print("END-TO-END PASS ORDERING VALIDATION")
    print("E-Graph Framework → Real Hexagon MLIR Pipeline → Simulator")
    print("=" * 70)

    # Step 1: Compute orderings using e-graph + ILP
    print("\n--- Step 1: Computing optimal orderings via ILP ---")
    orderings = compute_orderings()
    analyze_orderings(orderings)

    if args.orderings_only:
        return

    # Step 2: Generate phaseOrdering option strings
    print("\n--- Step 2: Generating phaseOrdering option strings ---")
    for name, config in orderings.items():
        opt_str = ordering_to_option_string(config.phase3_order)
        print(f"  {name}: --phase-ordering=\"{opt_str}\"")

    if args.dry_run:
        print("\n[DRY RUN] Skipping compilation and simulation.")
        print("To compile and run, rebuild the backend with the phaseOrdering")
        print("changes and re-run without --dry-run.")

        # Save orderings for reference
        output = {
            name: {
                "phase3_order": config.phase3_order,
                "option_string": ordering_to_option_string(config.phase3_order),
                "description": config.description,
            }
            for name, config in orderings.items()
        }
        out_path = Path(args.output_dir)
        out_path.mkdir(parents=True, exist_ok=True)
        with open(out_path / "orderings.json", "w") as f:
            json.dump(output, f, indent=2)
        print(f"\nOrderings saved to {out_path / 'orderings.json'}")
        return

    # Step 3-5: For each kernel, compile with all orderings and run
    mlir_inputs = args.mlir_input  # now a list
    os.makedirs(args.output_dir, exist_ok=True)
    all_kernel_results = {}

    for mlir_path in mlir_inputs:
        kernel_name = Path(mlir_path).parent.name
        kernel_dir = os.path.join(args.output_dir, kernel_name)
        os.makedirs(kernel_dir, exist_ok=True)

        print(f"\n--- Step 3: Compiling kernel '{kernel_name}' with each ordering ---")
        print(f"  Input: {mlir_path}")
        compiled = {}

        for name, config in orderings.items():
            print(f"\n  Compiling with ordering: {name}")
            obj_path = compile_mlir_with_ordering(mlir_path, config, kernel_dir)
            if obj_path:
                compiled[name] = obj_path
                print(f"    -> {obj_path}")
            else:
                print(f"    -> FAILED (backend not built?)")

            # Also generate LLVM IR for inspection
            ll_path = compile_mlir_to_llvmir(mlir_path, config, kernel_dir)
            if ll_path:
                print(f"    -> LLVM IR: {ll_path}")

        if not compiled:
            print(f"\nWARNING: No orderings compiled for kernel '{kernel_name}'.")
            print("Make sure the Triton + Hexagon backend is built:")
            print("  cd hexagon-mlir && ./scripts/build_hexagon_mlir.sh")
            continue

        # Step 4: Run on simulator
        print(f"\n--- Step 4: Running '{kernel_name}' on Hexagon v73 simulator ---")
        results = {}
        for name, obj_path in compiled.items():
            print(f"  Running {name}...")
            result = run_on_simulator(obj_path)
            results[name] = result
            print(f"    -> {result}")

        # Step 5: Compare results
        generate_results_table(orderings, results)
        all_kernel_results[kernel_name] = results

    # Save all results
    out_path = Path(args.output_dir) / "e2e_results.json"
    output = {}
    for kernel_name, results in all_kernel_results.items():
        output[kernel_name] = {
            name: {
                "phase3_order": orderings[name].phase3_order,
                "option_string": ordering_to_option_string(orderings[name].phase3_order),
                "cycles": results.get(name),
                "description": orderings[name].description,
            }
            for name in orderings
        }
    with open(out_path, "w") as f:
        json.dump(output, f, indent=2)
    print(f"\nResults saved to {out_path}")


if __name__ == "__main__":
    main()
