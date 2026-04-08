#!/usr/bin/env python3
"""
Paper Experiments: E-Graph Phase Ordering with Hardware-Tailored Cost Models.

Runs real MLIR kernels through the full Hexagon pipeline with all 24 Phase-3
orderings, on multiple architecture versions, collecting cycle-accurate
simulator measurements.

Experimental design:
  - Kernels: attention, add_2d, matmul, conv, layout_propagation
  - Orderings: all 24 permutations of 4 Phase-3 passes
  - Architectures: v73, v75 (configurable)
  - Metrics: Pcycles, instruction count, object size

Usage:
  # Run all kernels on v75 (default)
  RUN_ON_SIM=1 python run_paper_experiments.py

  # Run specific kernel with all 24 permutations
  RUN_ON_SIM=1 python run_paper_experiments.py --kernels hexkl_attention --all-perms

  # Run on multiple architectures
  RUN_ON_SIM=1 python run_paper_experiments.py --arch 75 73

  # Quick test: key orderings only
  RUN_ON_SIM=1 python run_paper_experiments.py --kernels add_2d_kernel
"""

import argparse
import itertools
import json
import os
import re
import subprocess
import sys
import time
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

# Setup paths
sys.path.insert(0, os.path.dirname(__file__))
REPO_ROOT = Path(__file__).resolve().parent.parent.parent / "hexagon-mlir"
sys.path.insert(0, str(REPO_ROOT / "qcom_hexagon_backend" / "backend"))

# ── Phase 3 reorderable passes (legacy, 4-pass window) ─────────────────
REORDERABLE = ["HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads"]

# ── Extended pass set (18-pass window, Phases 2-4) ─────────────────────
EXTENDED_PASSES = [
    "MatmulToHexKL", "ConvTiling", "ConvertLayout", "ScheduleMatmulForHVX",
    "LinalgGeneralize", "HexagonRVO", "SCFThreading",
    "HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads",
    "DecomposeTensorConcat", "HexagonTiling", "SmallExponentToMultiply",
    "HoistScalarOps", "LICM", "HexagonVectorization", "AddFastMath",
]

# Dependency DAG: (A, B) means A must come before B
PASS_DEPS = [
    ("ConvertLayout", "LinalgGeneralize"),
    ("ScheduleMatmulForHVX", "LinalgGeneralize"),
    ("LinalgGeneralize", "HexagonRVO"),
    ("LinalgGeneralize", "HexagonFusion"),
    ("LinalgGeneralize", "HexagonSlicing"),
    ("LinalgGeneralize", "VTCMTiling"),
    ("LinalgGeneralize", "FormVirtualThreads"),
    ("LinalgGeneralize", "HexagonTiling"),
    ("HexagonFusion", "HexagonTiling"),
    ("HexagonTiling", "HoistScalarOps"),
    ("HoistScalarOps", "LICM"),
    ("LICM", "HexagonVectorization"),
    ("HexagonTiling", "HexagonVectorization"),
    ("HoistScalarOps", "HexagonVectorization"),
    ("HexagonVectorization", "AddFastMath"),
    ("SmallExponentToMultiply", "AddFastMath"),
]

DEFAULT_EXTENDED_ORDER = [
    "MatmulToHexKL", "ConvTiling", "ConvertLayout", "ScheduleMatmulForHVX",
    "LinalgGeneralize", "HexagonRVO", "SCFThreading",
    "HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads",
    "DecomposeTensorConcat", "HexagonTiling", "SmallExponentToMultiply",
    "HoistScalarOps", "LICM", "HexagonVectorization", "AddFastMath",
]

# ── Test kernel definitions ─────────────────────────────────────────────
TEST_KERNELS = {
    "hexkl_attention": {
        "mlir": str(REPO_ROOT / "test/python/mlir/hexkl_attention/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/hexkl_attention/wrapper.cpp"),
        "func_name": "hexkl_attention",
        "description": "Flash attention f16 (1024x64, 15+ linalg ops)",
        "category": "mixed",
    },
    "add_2d_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/add_2d_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/add_2d_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Elementwise f32 add (63x16384)",
        "category": "bandwidth",
    },
    "hexkl_linalg_matmul": {
        "mlir": str(REPO_ROOT / "test/python/mlir/hexkl_linalg_matmul/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/hexkl_linalg_matmul/wrapper.cpp"),
        "func_name": "hexkl_linalg_matmul",
        "description": "Matmul f16→f32 (1024x64 × 64x512)",
        "category": "compute",
    },
    "conv_tiling": {
        "mlir": str(REPO_ROOT / "test/python/mlir/conv_tiling/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/conv_tiling/wrapper.cpp"),
        "func_name": "conv_tiling_hmx",
        "description": "Conv2D NHWC f16 (1x16x32x128)",
        "category": "compute",
    },
    "layout_propagation": {
        "mlir": str(REPO_ROOT / "test/python/mlir/layout_propagation/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/layout_propagation/wrapper.cpp"),
        "func_name": "unpack_then_reduce",
        "description": "Unpack+reduce i32 (layout test)",
        "category": "memory",
    },
    # ── Generated workload variants (same interface as add_2d_kernel) ─────
    "mul_2d_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/mul_2d_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/mul_2d_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Elementwise f32 multiply (63x16384)",
        "category": "bandwidth",
    },
    "sub_2d_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/sub_2d_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/sub_2d_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Elementwise f32 subtract (63x16384)",
        "category": "bandwidth",
    },
    "max_2d_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/max_2d_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/max_2d_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Elementwise f32 max (63x16384)",
        "category": "bandwidth",
    },
    "add_relu_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/add_relu_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/add_relu_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Fused add+relu f32 (63x16384, 2 linalg ops)",
        "category": "bandwidth",
    },
    "add_mul_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/add_mul_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/add_mul_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Fused add+square f32 (63x16384, 2 linalg ops)",
        "category": "bandwidth",
    },
    "add_small_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/add_small_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/add_small_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Elementwise f32 add SMALL (16x4096)",
        "category": "bandwidth",
    },
    "add_large_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/add_large_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/add_large_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Elementwise f32 add LARGE (128x16384)",
        "category": "bandwidth",
    },
}

# ── Cost models for ILP comparison ──────────────────────────────────────
COST_MODELS = {
    "vtcm_first": {"VTCMTiling": 3.0, "HexagonFusion": 1.5, "HexagonSlicing": 1.0, "FormVirtualThreads": 0.5},
    "fusion_first": {"HexagonFusion": 3.0, "VTCMTiling": 1.5, "HexagonSlicing": 1.0, "FormVirtualThreads": 0.5},
    "balanced": {"HexagonFusion": 2.0, "VTCMTiling": 2.0, "HexagonSlicing": 1.0, "FormVirtualThreads": 0.5},
}


def random_valid_ordering(passes=None, deps=None, rng=None):
    """Generate a random valid topological ordering of the dependency DAG.

    Uses Kahn's algorithm with random tie-breaking to sample uniformly-ish
    from the set of valid topological orderings.
    """
    if passes is None:
        passes = EXTENDED_PASSES
    if deps is None:
        deps = PASS_DEPS
    if rng is None:
        rng = __import__('random')

    # Build adjacency and in-degree
    in_deg = {p: 0 for p in passes}
    adj = {p: [] for p in passes}
    for a, b in deps:
        if a in in_deg and b in in_deg:
            adj[a].append(b)
            in_deg[b] += 1

    # Kahn's with random selection from ready set
    ready = [p for p in passes if in_deg[p] == 0]
    result = []
    while ready:
        # Random selection from ready nodes
        idx = rng.randint(0, len(ready) - 1) if hasattr(rng, 'randint') else rng.integers(0, len(ready))
        chosen = ready.pop(idx)
        result.append(chosen)
        for neighbor in adj[chosen]:
            in_deg[neighbor] -= 1
            if in_deg[neighbor] == 0:
                ready.append(neighbor)

    return result


def extended_orderings(n_random=50, seed=42):
    """Generate orderings for the extended 18-pass window.

    Returns a dict of ordering_name → pass list, including:
    - 'default': the hand-tuned default ordering
    - 'random_XX': randomly sampled valid topological orderings
    """
    import random
    rng = random.Random(seed)

    orderings = {"default": list(DEFAULT_EXTENDED_ORDER)}

    for i in range(n_random):
        name = f"rand_{i:03d}"
        orderings[name] = random_valid_ordering(rng=rng)

    return orderings


def all_permutations():
    """Generate all 24 permutations of the 4 Phase 3 passes."""
    perms = {}
    for i, perm in enumerate(itertools.permutations(REORDERABLE)):
        name = f"perm_{i:02d}"
        perms[name] = list(perm)
    return perms


def key_orderings():
    """5 key orderings for quick testing."""
    return {
        "default": ["HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads"],
        "vtcm_first": ["VTCMTiling", "HexagonFusion", "HexagonSlicing", "FormVirtualThreads"],
        "fusion_first": ["HexagonFusion", "VTCMTiling", "FormVirtualThreads", "HexagonSlicing"],
        "slicing_first": ["HexagonSlicing", "HexagonFusion", "VTCMTiling", "FormVirtualThreads"],
        "worst_case": ["FormVirtualThreads", "HexagonSlicing", "VTCMTiling", "HexagonFusion"],
    }


def set_arch_version(arch_version: str):
    """Set the Hexagon architecture version for compilation and simulation."""
    os.environ["HEXAGON_ARCH_VERSION"] = str(arch_version)
    print(f"  Architecture: Hexagon v{arch_version}")


def compile_mlir(kernel_info, ordering, arch_version):
    """Compile MLIR kernel with given pass ordering. Returns (obj_bytes, error)."""
    # Import here so HEXAGON_ARCH_VERSION is read fresh
    from importlib import reload
    import hexagon_options as ho
    reload(ho)  # Re-read HEXAGON_ARCH_VERSION
    from triton._C.libtriton import ir, qcom_hexagon_backend

    phase_str = ",".join(ordering)
    opts = {k: str(v) for k, v in ho.HexagonOptions().__dict__.items()}
    opts["phaseOrdering"] = phase_str

    mlir_path = kernel_info["mlir"]
    context = ir.context()
    qcom_hexagon_backend.load_dialects(context)

    try:
        mlir_mod = qcom_hexagon_backend.parse_mlir_module_from_file(mlir_path, context)
        obj_modules = qcom_hexagon_backend.translate_linalg_to_obj(mlir_mod, opts)
        return bytes(obj_modules[0]), None
    except Exception as e:
        return None, str(e)


def link_so(kernel_info, obj_path):
    """Link .o + wrapper → .so using HexagonExecutor."""
    from importlib import reload
    import hexagon_options as ho
    reload(ho)
    from triton.backends.qcom_hexagon_backend.hexagon_executor import HexagonExecutor

    # Pass boolean False, not string "False" (string "False" is truthy)
    hexec = HexagonExecutor(False)
    try:
        so_path = hexec.generate_shared_object(kernel_info["wrapper"], obj_path)
        return so_path, hexec.config, None
    except Exception as e:
        return None, None, str(e)


def config_to_dict(config):
    """Convert HexagonExecutor config namedtuple to a picklable dict."""
    return {
        "Q6_VERSION": config.Q6_VERSION,
        "env_vars": dict(config.env_vars),
        "HEX_TOOLS": dict(config.HEX_TOOLS),
    }


def run_simulator(so_path, config):
    """Run .so on hexagon-sim, capturing Pcycles and instruction count.

    Args:
        config: Either a HexagonExecutor config namedtuple or a plain dict
                (the dict form is used for picklability in parallel mode).
    """
    # Support both namedtuple and dict forms
    if isinstance(config, dict):
        arch = config["Q6_VERSION"]
        env_vars = config["env_vars"]
        hex_tools = config["HEX_TOOLS"]
    else:
        arch = config.Q6_VERSION
        env_vars = config.env_vars
        hex_tools = config.HEX_TOOLS

    local_dir = os.path.dirname(so_path)
    osm_path = os.path.join(local_dir, "osm.cfg")
    q6ss_path = os.path.join(local_dir, "q6ss.cfg")

    # Write simulator config files
    with open(osm_path, "w") as f:
        f.write(f"{env_vars['HEXAGON_SDK_ROOT']}/rtos/qurt/computev{arch}/debugger/lnx64/qurt_model.so\n")

    with open(q6ss_path, "w") as f:
        f.write(f"{env_vars['HEXAGON_TOOLS']}/lib/iss/qtimer.so --csr_base=0xFC900000 --irq_p=1 --freq=19200000 --cnttid=1\n")
        f.write(f"{env_vars['HEXAGON_TOOLS']}/lib/iss/l2vic.so 32 0xFC910000\n")

    # Build simulator command
    sim_cmd = (
        f"{hex_tools['hexagon-sim']} -mv{arch} "
        f"--usefs={env_vars['HEXAGON_TOOLS']}/../Tools/target/hexagon/lib/v{arch}/G0/pic "
        f"--simulated_returnval "
        f"--cosim_file {q6ss_path} "
        f"--l2tcm_base 0xd800 "
        f"--rtos {osm_path} "
        f"{env_vars['HEXAGON_SDK_ROOT']}/rtos/qurt/computev{arch}/sdksim_bin/runelf.pbn -- "
        f"{env_vars['HEXAGON_SDK_ROOT']}/libs/run_main_on_hexagon/ship/hexagon_toolv87_v{arch}/run_main_on_hexagon_sim "
        f"stack_size=0x400000 -- "
        f"{so_path}"
    )

    try:
        result = subprocess.run(
            sim_cmd, shell=True, capture_output=True, text=True, timeout=3600
        )
        stdout = result.stdout
        stderr = result.stderr
        combined = stdout + "\n" + stderr

        # Save log for debugging
        log_path = so_path.replace(".so", "_sim.log")
        with open(log_path, "w") as f:
            f.write(f"CMD: {sim_cmd}\n\nSTDOUT:\n{stdout}\n\nSTDERR:\n{stderr}\n")

        # Parse Pcycles
        pcycles = None
        insns = None
        # hexagon-sim outputs stats like: "Total Pcycles = 526401358"
        # or "Pcycles = 526401358" in various formats
        for pattern in [
            r'Total Pcycles\s*=\s*(\d+)',
            r'Pcycles\s*[=:]\s*(\d+)',
            r'Total:\s*.*?Pcycles\s*=\s*(\d+)',
            r'(\d{6,})\s+processor\s+cycles',
        ]:
            m = re.search(pattern, combined, re.IGNORECASE)
            if m:
                pcycles = int(m.group(1))
                break

        for pattern in [
            r'Total Instructions\s*=\s*(\d+)',
            r'Insns?\s*[=:]\s*(\d+)',
            r'Total:\s*.*?Insns?\s*=\s*(\d+)',
        ]:
            m = re.search(pattern, combined, re.IGNORECASE)
            if m:
                insns = int(m.group(1))
                break

        # Parse time from TestReport if available
        time_us = None
        m = re.search(r'Time:\s*(\d+)', combined)
        if m:
            time_us = int(m.group(1))

        # Check for pass/fail
        passed = "Pass" in combined or result.returncode == 0

        return {
            "pcycles": pcycles,
            "insns": insns,
            "time_us": time_us,
            "passed": passed,
            "returncode": result.returncode,
        }

    except subprocess.TimeoutExpired:
        return {"pcycles": None, "insns": None, "error": "timeout"}
    except Exception as e:
        return {"pcycles": None, "insns": None, "error": str(e)}


def run_single_experiment(kernel_info, ordering, ordering_name, output_dir, arch_version):
    """Compile, link, and simulate one kernel with one ordering. Returns result dict."""
    run_dir = os.path.join(output_dir, ordering_name)
    os.makedirs(run_dir, exist_ok=True)

    # Step 1: Compile MLIR → .o
    obj_bytes, compile_err = compile_mlir(kernel_info, ordering, arch_version)
    if compile_err:
        return {"status": "compile_error", "error": compile_err, "ordering": ordering}

    obj_path = os.path.join(run_dir, f"{kernel_info['func_name']}.o")
    Path(obj_path).write_bytes(obj_bytes)
    obj_size = len(obj_bytes)

    # Step 2: Link .o + wrapper → .so
    so_path, config, link_err = link_so(kernel_info, obj_path)
    if link_err:
        return {"status": "link_error", "error": link_err, "obj_size": obj_size, "ordering": ordering}

    # Step 3: Run on simulator
    sim_result = run_simulator(so_path, config)

    return {
        "status": "ok" if sim_result.get("pcycles") else "no_pcycles",
        "pcycles": sim_result.get("pcycles"),
        "insns": sim_result.get("insns"),
        "time_us": sim_result.get("time_us"),
        "obj_size": obj_size,
        "ordering": ordering,
        "passed": sim_result.get("passed", False),
        "error": sim_result.get("error"),
    }


def compute_cost(ordering, weights):
    """Compute linear cost: sum of position * weight for each pass."""
    cost = 0.0
    for pos, pass_name in enumerate(ordering):
        w = weights.get(pass_name, 1.0)
        cost += pos * w
    return cost


def predict_best_ordering(orderings, weights):
    """Find ordering with minimum cost under given weights."""
    best_name = None
    best_cost = float("inf")
    for name, ordering in orderings.items():
        c = compute_cost(ordering, weights)
        if c < best_cost:
            best_cost = c
            best_name = name
    return best_name, best_cost


def derive_cost_weights(results_by_ordering):
    """Derive cost model weights from measured cycle counts.

    For each pass, compute Pearson correlation between its position (0-3)
    and the resulting cycle count across all orderings. Passes where earlier
    position correlates with fewer cycles get higher weight.
    """
    import numpy as np

    valid = {k: v for k, v in results_by_ordering.items() if v.get("pcycles")}
    if len(valid) < 4:
        return {}

    weights = {}
    for pass_name in REORDERABLE:
        positions = []
        cycles = []
        for name, data in valid.items():
            pos = data["ordering"].index(pass_name)
            positions.append(pos)
            cycles.append(data["pcycles"])

        pos_arr = np.array(positions, dtype=float)
        cyc_arr = np.array(cycles, dtype=float)

        if np.std(pos_arr) > 0 and np.std(cyc_arr) > 0:
            # Positive correlation = earlier position → fewer cycles (good)
            # We want weight proportional to how much earlier position helps
            corr = np.corrcoef(pos_arr, cyc_arr)[0, 1]
            # If corr > 0: earlier position = more cycles (bad → low weight)
            # If corr < 0: earlier position = fewer cycles (good → high weight)
            weights[pass_name] = max(0.1, 2.0 * (1.0 - corr))
        else:
            weights[pass_name] = 1.0

    return weights


def analyze_results(all_results, orderings):
    """Analyze results: derive cost models, compare predictions vs actual."""
    analysis = {}

    for arch, arch_results in all_results.items():
        arch_analysis = {}

        for kernel_name, kernel_results in arch_results.items():
            valid = {k: v for k, v in kernel_results.items() if v.get("pcycles")}
            if not valid:
                arch_analysis[kernel_name] = {"status": "no_valid_results"}
                continue

            # Sort by cycle count
            sorted_results = sorted(valid.items(), key=lambda x: x[1]["pcycles"])
            best_name, best_data = sorted_results[0]
            worst_name, worst_data = sorted_results[-1]
            speedup = worst_data["pcycles"] / best_data["pcycles"] if best_data["pcycles"] > 0 else 1.0

            # Derive hardware-calibrated weights
            hw_weights = derive_cost_weights(kernel_results)

            # For each cost model, predict best ordering and check accuracy
            predictions = {}
            for model_name, model_weights in {**COST_MODELS, "hw_calibrated": hw_weights}.items():
                if not model_weights:
                    continue
                pred_name, pred_cost = predict_best_ordering(orderings, model_weights)
                pred_pcycles = valid.get(pred_name, {}).get("pcycles")
                predictions[model_name] = {
                    "predicted_best": pred_name,
                    "predicted_cost": pred_cost,
                    "actual_pcycles": pred_pcycles,
                    "is_actual_best": pred_name == best_name,
                    "vs_best_pct": ((pred_pcycles - best_data["pcycles"]) / best_data["pcycles"] * 100)
                        if pred_pcycles else None,
                }

            arch_analysis[kernel_name] = {
                "best_ordering": best_name,
                "best_pcycles": best_data["pcycles"],
                "best_phase3": best_data["ordering"],
                "worst_ordering": worst_name,
                "worst_pcycles": worst_data["pcycles"],
                "speedup": speedup,
                "speedup_pct": (speedup - 1) * 100,
                "num_valid": len(valid),
                "hw_calibrated_weights": hw_weights,
                "cost_model_predictions": predictions,
                "all_results_sorted": [
                    {"ordering": name, "pcycles": data["pcycles"], "insns": data.get("insns"),
                     "phase3": data["ordering"]}
                    for name, data in sorted_results
                ],
            }

        analysis[arch] = arch_analysis

    return analysis


def print_summary(analysis):
    """Print formatted summary tables."""
    for arch, arch_analysis in analysis.items():
        print(f"\n{'='*80}")
        print(f"  HEXAGON v{arch} — RESULTS SUMMARY")
        print(f"{'='*80}")

        for kernel_name, ka in arch_analysis.items():
            if ka.get("status") == "no_valid_results":
                print(f"\n  {kernel_name}: NO VALID RESULTS")
                continue

            print(f"\n  ── {kernel_name} ({ka['num_valid']} orderings) ──")
            print(f"  Best:    {ka['best_ordering']} = {ka['best_pcycles']:,} Pcycles")
            print(f"           Phase 3: {' → '.join(ka['best_phase3'])}")
            print(f"  Worst:   {ka['worst_ordering']} = {ka['worst_pcycles']:,} Pcycles")
            print(f"  Speedup: {ka['speedup']:.4f}x ({ka['speedup_pct']:.2f}%)")

            if ka.get("hw_calibrated_weights"):
                print(f"\n  Derived cost weights:")
                for p, w in sorted(ka["hw_calibrated_weights"].items(), key=lambda x: -x[1]):
                    print(f"    {p}: {w:.2f}")

            if ka.get("cost_model_predictions"):
                print(f"\n  Cost model accuracy:")
                print(f"    {'Model':<18} {'Predicted':<14} {'Actual Pcyc':>14} {'vs Best':>8} {'Correct?':>10}")
                print(f"    {'-'*64}")
                for model_name, pred in ka["cost_model_predictions"].items():
                    pred_name = pred["predicted_best"]
                    pcyc = f"{pred['actual_pcycles']:,}" if pred["actual_pcycles"] else "N/A"
                    vs = f"{pred['vs_best_pct']:+.2f}%" if pred["vs_best_pct"] is not None else "N/A"
                    correct = "✓" if pred["is_actual_best"] else "✗"
                    print(f"    {model_name:<18} {pred_name:<14} {pcyc:>14} {vs:>8} {correct:>10}")

        # Cross-kernel summary
        print(f"\n  ── Cross-Kernel Summary (v{arch}) ──")
        print(f"  {'Kernel':<25} {'Best Ordering':<16} {'Speedup':>10} {'Category':>12}")
        print(f"  {'-'*63}")
        for kernel_name, ka in arch_analysis.items():
            if ka.get("status") == "no_valid_results":
                continue
            cat = TEST_KERNELS.get(kernel_name, {}).get("category", "unknown")
            print(f"  {kernel_name:<25} {ka['best_ordering']:<16} {ka['speedup_pct']:>9.2f}% {cat:>12}")

    # Cross-architecture comparison
    archs = list(analysis.keys())
    if len(archs) >= 2:
        print(f"\n{'='*80}")
        print(f"  CROSS-ARCHITECTURE COMPARISON")
        print(f"{'='*80}")
        kernels = set()
        for arch_analysis in analysis.values():
            kernels.update(arch_analysis.keys())

        for kernel_name in sorted(kernels):
            print(f"\n  ── {kernel_name} ──")
            print(f"  {'Arch':<8} {'Best Ordering':<16} {'Best Pcycles':>14} {'Speedup':>10}")
            print(f"  {'-'*48}")
            for arch in archs:
                ka = analysis.get(arch, {}).get(kernel_name, {})
                if ka.get("status") == "no_valid_results" or not ka.get("best_ordering"):
                    continue
                print(f"  v{arch:<6} {ka['best_ordering']:<16} {ka['best_pcycles']:>14,} {ka['speedup_pct']:>9.2f}%")


def main():
    parser = argparse.ArgumentParser(description="Paper experiments: E2E phase ordering evaluation")
    parser.add_argument("--arch", nargs="+", default=["75"],
                        help="Architecture versions to test (e.g., 75 73)")
    parser.add_argument("--kernels", nargs="*", default=None,
                        help="Specific kernels to test (default: all)")
    parser.add_argument("--all-perms", action="store_true",
                        help="Test all 24 permutations (slow)")
    parser.add_argument("--output-dir", default=None,
                        help="Output directory (default: hw_eval/paper_experiments/)")
    parser.add_argument("--resume", action="store_true",
                        help="Skip experiments with existing results")
    parser.add_argument("--parallel", type=int, default=1,
                        help="Number of parallel simulations (default: 1, use e.g. 5 for 5 concurrent sims)")
    parser.add_argument("--extended", type=int, default=0, metavar="N",
                        help="Use extended 18-pass window with N random orderings + default (e.g., --extended 50)")
    parser.add_argument("--seed", type=int, default=42,
                        help="Random seed for extended ordering sampling")
    args = parser.parse_args()

    os.environ.setdefault("RUN_ON_SIM", "1")

    output_base = args.output_dir or str(
        Path(__file__).resolve().parent / "hw_eval" / "paper_experiments"
    )
    os.makedirs(output_base, exist_ok=True)

    # Select orderings
    if args.extended > 0:
        orderings = extended_orderings(n_random=args.extended, seed=args.seed)
    elif args.all_perms:
        orderings = all_permutations()
    else:
        orderings = key_orderings()

    # Select kernels
    kernels = TEST_KERNELS
    if args.kernels:
        kernels = {k: v for k, v in TEST_KERNELS.items() if k in args.kernels}

    print("=" * 80)
    print("  PAPER EXPERIMENTS: E-Graph Phase Ordering")
    print("  with Hardware-Tailored Cost Models")
    print("=" * 80)
    print(f"  Architectures: {', '.join(f'v{a}' for a in args.arch)}")
    print(f"  Kernels:       {', '.join(kernels.keys())}")
    print(f"  Orderings:     {len(orderings)} ({'all 24 permutations' if args.all_perms else 'key orderings'})")
    print(f"  Total runs:    {len(args.arch) * len(kernels) * len(orderings)}")
    print(f"  Output:        {output_base}")
    print()

    # Load existing results if resuming
    results_path = os.path.join(output_base, "all_results.json")
    all_results = {}
    if args.resume and os.path.exists(results_path):
        with open(results_path) as f:
            all_results = json.load(f)
        print(f"  Resuming from {results_path}")

    # Run experiments
    for arch in args.arch:
        arch_key = f"v{arch}"
        if arch_key not in all_results:
            all_results[arch_key] = {}

        set_arch_version(arch)

        for kernel_name, kernel_info in kernels.items():
            print(f"\n{'─'*80}")
            print(f"  KERNEL: {kernel_name} — {kernel_info['description']}")
            print(f"  ARCH:   Hexagon v{arch}")
            print(f"{'─'*80}")

            if kernel_name not in all_results[arch_key]:
                all_results[arch_key][kernel_name] = {}

            kernel_dir = os.path.join(output_base, arch_key, kernel_name)
            os.makedirs(kernel_dir, exist_ok=True)

            # Determine which orderings need to run
            to_run = []
            for i, (ord_name, ordering) in enumerate(orderings.items()):
                if args.resume and ord_name in all_results[arch_key][kernel_name]:
                    existing = all_results[arch_key][kernel_name][ord_name]
                    if existing.get("pcycles"):
                        print(f"  [{i+1}/{len(orderings)}] {ord_name}: CACHED {existing['pcycles']:,} Pcycles")
                        continue
                to_run.append((i, ord_name, ordering))

            if not to_run:
                print("  All orderings cached, skipping.")
                continue

            if args.parallel > 1 and len(to_run) > 1:
                # ── Parallel mode ──────────────────────────────────────
                n_workers = min(args.parallel, len(to_run))
                print(f"  Running {len(to_run)} orderings with {n_workers} parallel workers...")

                # Step 1: Compile + link all orderings sequentially (fast, ~10s each)
                jobs = []  # (ord_name, ordering, so_path, config)
                for i, ord_name, ordering in to_run:
                    phase_str = " → ".join(ordering)
                    print(f"  [{i+1}/{len(orderings)}] {ord_name}: compiling...", end=" ", flush=True)

                    run_dir = os.path.join(kernel_dir, ord_name)
                    os.makedirs(run_dir, exist_ok=True)

                    obj_bytes, compile_err = compile_mlir(kernel_info, ordering, arch)
                    if compile_err:
                        print(f"COMPILE ERROR: {compile_err[:60]}")
                        all_results[arch_key][kernel_name][ord_name] = {
                            "status": "compile_error", "error": compile_err, "ordering": ordering
                        }
                        continue

                    obj_path = os.path.join(run_dir, f"{kernel_info['func_name']}.o")
                    Path(obj_path).write_bytes(obj_bytes)

                    so_path, config, link_err = link_so(kernel_info, obj_path)
                    if link_err:
                        print(f"LINK ERROR: {link_err[:60]}")
                        all_results[arch_key][kernel_name][ord_name] = {
                            "status": "link_error", "error": link_err, "ordering": ordering
                        }
                        continue

                    print(f"linked → {os.path.basename(so_path)}")
                    jobs.append((ord_name, ordering, so_path, config_to_dict(config), len(obj_bytes)))

                # Step 2: Run all simulations in parallel (the bottleneck)
                if jobs:
                    print(f"\n  Launching {len(jobs)} simulations in parallel ({n_workers} workers)...")
                    t0_all = time.time()

                    with ProcessPoolExecutor(max_workers=n_workers) as executor:
                        futures = {}
                        for ord_name, ordering, so_path, config, obj_size in jobs:
                            future = executor.submit(run_simulator, so_path, config)
                            futures[future] = (ord_name, ordering, obj_size)

                        for future in as_completed(futures):
                            ord_name, ordering, obj_size = futures[future]
                            try:
                                sim_result = future.result()
                                result = {
                                    "status": "ok" if sim_result.get("pcycles") else "no_pcycles",
                                    "pcycles": sim_result.get("pcycles"),
                                    "insns": sim_result.get("insns"),
                                    "time_us": sim_result.get("time_us"),
                                    "obj_size": obj_size,
                                    "ordering": ordering,
                                    "passed": sim_result.get("passed", False),
                                    "error": sim_result.get("error"),
                                }
                            except Exception as e:
                                result = {"status": "error", "error": str(e), "ordering": ordering}

                            pcycles = result.get("pcycles")
                            if pcycles:
                                print(f"  ✓ {ord_name}: {pcycles:,} Pcycles")
                            else:
                                error = result.get("error") or ""
                                print(f"  ✗ {ord_name}: {result.get('status','?')} {error[:60]}")

                            all_results[arch_key][kernel_name][ord_name] = result

                            # Save incrementally
                            with open(results_path, "w") as f:
                                json.dump(all_results, f, indent=2, default=str)

                    elapsed_all = time.time() - t0_all
                    print(f"  All {len(jobs)} simulations done in {elapsed_all:.0f}s "
                          f"({elapsed_all/len(jobs):.0f}s avg, {n_workers}x parallel)")

            else:
                # ── Sequential mode (original) ─────────────────────────
                for i, ord_name, ordering in to_run:
                    tag = f"[{i+1}/{len(orderings)}]"
                    phase_str = " → ".join(ordering)
                    print(f"  {tag} {ord_name}: {phase_str}", end=" ... ", flush=True)

                    t0 = time.time()
                    result = run_single_experiment(
                        kernel_info, ordering, ord_name, kernel_dir, arch
                    )
                    elapsed = time.time() - t0

                    pcycles = result.get("pcycles")
                    if pcycles:
                        print(f"{pcycles:,} Pcycles ({elapsed:.0f}s)")
                    else:
                        status = result.get("status", "unknown")
                        error = result.get("error") or ""
                        print(f"{status}: {error[:80]} ({elapsed:.0f}s)")

                    all_results[arch_key][kernel_name][ord_name] = result

                    # Save incrementally
                    with open(results_path, "w") as f:
                        json.dump(all_results, f, indent=2, default=str)

    # ── Analysis ────────────────────────────────────────────────────────
    print(f"\n{'='*80}")
    print("  ANALYSIS")
    print(f"{'='*80}")

    analysis = analyze_results(all_results, orderings)
    print_summary(analysis)

    # Save analysis
    analysis_path = os.path.join(output_base, "analysis.json")
    with open(analysis_path, "w") as f:
        json.dump(analysis, f, indent=2, default=str)

    # Save final results
    with open(results_path, "w") as f:
        json.dump(all_results, f, indent=2, default=str)

    print(f"\n  Results: {results_path}")
    print(f"  Analysis: {analysis_path}")
    print(f"\n{'='*80}")
    print("  EXPERIMENTS COMPLETE")
    print(f"{'='*80}")


if __name__ == "__main__":
    main()
