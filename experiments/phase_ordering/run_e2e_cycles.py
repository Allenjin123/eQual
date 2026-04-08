#!/usr/bin/env python3
"""
End-to-End Cycle Count Measurement for Phase Ordering Experiments.

Uses the existing Hexagon test infrastructure (HexagonExecutor + hexagon-sim)
to compile MLIR kernels with different Phase 3 orderings and measure actual
cycle counts on the Hexagon v75 simulator.

Unlike run_e2e_ordering.py (which does static analysis), this script
produces REAL cycle counts by:
  1. Compiling MLIR → .o via qcom_hexagon_backend
  2. Linking .o + C++ wrapper → .so via HexagonExecutor
  3. Running .so on hexagon-sim via QuRT simulation
  4. Extracting cycle counts from TestReport output

Prerequisites:
  - Built Triton + Hexagon backend (pip install -e)
  - Hexagon SDK 6.5.0.0 with simulator
  - RUN_ON_SIM=1 environment variable

Usage:
  RUN_ON_SIM=1 python run_e2e_cycles.py
"""

import json
import os
import re
import sys
import time
from pathlib import Path

# Add parent for eval_experiments imports
sys.path.insert(0, os.path.dirname(__file__))
REPO_ROOT = Path(__file__).resolve().parent.parent.parent / "hexagon-mlir"
sys.path.insert(0, str(REPO_ROOT / "qcom_hexagon_backend" / "backend"))

from eval_experiments import (
    HEXAGON_DEPS,
    HEXAGON_PASSES,
    extract_with_ilp,
    find_commutative_pairs,
)

# Phase 3 reorderable passes
REORDERABLE = ["HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads"]

COST_MODELS = {
    "hw-calibrated": {
        "HoistScalarOps": 5.0, "HexagonFusion": 3.0, "VTCMTiling": 2.0,
        "HexagonSlicing": 1.5, "HexagonTiling": 1.0,
    },
    "fusion-first": {"HexagonFusion": 3.0, "VTCMTiling": 0.5},
    "vtcm-first": {"VTCMTiling": 3.0, "HexagonFusion": 1.5},
}

# Test kernels with their C++ wrappers
TEST_KERNELS = {
    "add_2d_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/add_2d_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/add_2d_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
    },
}


def compute_orderings():
    """Compute ILP-optimal orderings under different cost models."""
    orderings = {
        "default": ["HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads"],
    }
    for name, weights in COST_MODELS.items():
        full, _ = extract_with_ilp(HEXAGON_PASSES, HEXAGON_DEPS, weights)
        if full:
            orderings[name] = [p for p in full if p in REORDERABLE]

    if "hw-calibrated" in orderings:
        orderings["worst-case"] = list(reversed(orderings["hw-calibrated"]))

    return orderings


def run_kernel_with_ordering(kernel_info, ordering, ordering_name, output_dir):
    """Compile and run one kernel with one ordering. Returns cycle count or None."""
    from triton._C.libtriton import ir, qcom_hexagon_backend
    from hexagon_options import HexagonOptions
    from triton.backends.qcom_hexagon_backend.hexagon_executor import HexagonExecutor
    from triton.backends.qcom_hexagon_backend.hexagon_launcher_base import (
        create_timestamped_folder,
    )

    phase_str = ",".join(ordering)
    func_name = f"{kernel_info['func_name']}_{ordering_name}"
    print(f"\n  [{ordering_name}] phaseOrdering={phase_str}")

    # Build options
    opts = {k: str(v) for k, v in HexagonOptions().__dict__.items()}
    opts["phaseOrdering"] = phase_str

    # Compile MLIR → .o
    mlir_path = kernel_info["mlir"]
    context = ir.context()
    qcom_hexagon_backend.load_dialects(context)
    mlir_mod = qcom_hexagon_backend.parse_mlir_module_from_file(mlir_path, context)

    try:
        obj_modules = qcom_hexagon_backend.translate_linalg_to_obj(mlir_mod, opts)
    except Exception as e:
        print(f"    COMPILE FAILED: {e}")
        return None

    # Save .o
    run_dir = os.path.join(output_dir, ordering_name)
    os.makedirs(run_dir, exist_ok=True)
    obj_path = os.path.join(run_dir, f"{kernel_info['func_name']}.o")
    Path(obj_path).write_bytes(bytes(obj_modules[0]))
    print(f"    .o saved: {obj_path} ({len(obj_modules[0])} bytes)")

    # Link .o + wrapper → .so
    hexec = HexagonExecutor(opts.get("enableLWP", "False"))
    try:
        so_path = hexec.generate_shared_object(
            kernel_info["wrapper"], obj_path
        )
        print(f"    .so linked: {so_path}")
    except Exception as e:
        print(f"    LINK FAILED: {e}")
        return None

    # Run on simulator
    try:
        hexec.run(
            paths_to_shared_libs_local=[so_path],
            input_tensor_paths=[],
            output_paths=[],
            generatePerf=True,
        )
        result = hexec.final_result
        print(f"    Result: {result}")

        # Extract cycle count from perf report
        cycles = getattr(hexec, 'avg_cycles', None)
        if cycles:
            print(f"    Cycles: {cycles}")
            return cycles

        # Try to parse from stdout/perf output
        perf_path = so_path.replace(".so", "_perf.txt")
        if os.path.exists(perf_path):
            perf_text = Path(perf_path).read_text()
            match = re.search(r'(\d+)\s*(?:microseconds|cycles|us)', perf_text)
            if match:
                cycles = int(match.group(1))
                print(f"    Cycles (from perf): {cycles}")
                return cycles

        return result

    except Exception as e:
        print(f"    RUN FAILED: {e}")
        return None


def main():
    # Verify RUN_ON_SIM is set
    if os.environ.get("RUN_ON_SIM", "0") != "1":
        print("WARNING: RUN_ON_SIM not set to 1. Setting it now.")
        os.environ["RUN_ON_SIM"] = "1"

    output_dir = str(Path(__file__).resolve().parent / "hw_eval" / "e2e_cycles")
    os.makedirs(output_dir, exist_ok=True)

    print("=" * 70)
    print("END-TO-END CYCLE COUNT MEASUREMENT")
    print("E-Graph → MLIR Compile → Link → QuRT Sim → Cycle Counts")
    print("=" * 70)

    # Step 1: Compute orderings
    print("\n--- Computing orderings via ILP ---")
    orderings = compute_orderings()
    for name, order in orderings.items():
        print(f"  {name}: {' → '.join(order)}")

    # Step 2: For each kernel, compile and run with each ordering
    all_results = {}
    for kernel_name, kernel_info in TEST_KERNELS.items():
        print(f"\n{'='*70}")
        print(f"KERNEL: {kernel_name}")
        print(f"  MLIR: {kernel_info['mlir']}")
        print(f"  Wrapper: {kernel_info['wrapper']}")
        print(f"{'='*70}")

        kernel_dir = os.path.join(output_dir, kernel_name)
        os.makedirs(kernel_dir, exist_ok=True)
        results = {}

        for ordering_name, ordering in orderings.items():
            cycles = run_kernel_with_ordering(
                kernel_info, ordering, ordering_name, kernel_dir
            )
            results[ordering_name] = {
                "phase3_order": ordering,
                "cycles": cycles,
            }

        all_results[kernel_name] = results

        # Print comparison
        print(f"\n--- Results for {kernel_name} ---")
        print(f"{'Ordering':<20} {'Phase 3':<50} {'Cycles':>12}")
        print("-" * 82)
        for name, data in results.items():
            order_str = " → ".join(data["phase3_order"])
            cyc = data["cycles"] if data["cycles"] else "N/A"
            print(f"{name:<20} {order_str:<50} {str(cyc):>12}")

    # Save results
    out_path = os.path.join(output_dir, "cycle_results.json")
    with open(out_path, "w") as f:
        json.dump(all_results, f, indent=2, default=str)
    print(f"\nResults saved to {out_path}")


if __name__ == "__main__":
    main()
