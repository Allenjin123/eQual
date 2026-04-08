#!/usr/bin/env python3
"""
Comprehensive E2E Phase Ordering Experiments.

Attacks all three challenges:
1. More workloads: tests ALL available MLIR kernels (not just add_2d)
2. More orderings: tests ALL 24 permutations of Phase 3 passes
3. Cost model recalibration: derives weights from measured cycle counts

Runs each kernel through:
  MLIR → phaseOrdering → full Hexagon lowering → link → QuRT sim → Pcycles
"""

import itertools
import json
import os
import re
import sys
import time
from pathlib import Path

sys.path.insert(0, os.path.dirname(__file__))
REPO_ROOT = Path(__file__).resolve().parent.parent.parent / "hexagon-mlir"
sys.path.insert(0, str(REPO_ROOT / "qcom_hexagon_backend" / "backend"))

REORDERABLE = ["HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads"]

# All test kernels with wrappers (excluding non-linalg ones)
TEST_KERNELS = {
    "add_2d_kernel": {
        "mlir": str(REPO_ROOT / "test/python/mlir/add_2d_kernel/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/add_2d_kernel/wrapper.cpp"),
        "func_name": "add_2d_mlir",
        "description": "Elementwise f32 add (63x16384)",
    },
    "hexkl_linalg_matmul": {
        "mlir": str(REPO_ROOT / "test/python/mlir/hexkl_linalg_matmul/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/hexkl_linalg_matmul/wrapper.cpp"),
        "func_name": "hexkl_linalg_matmul",
        "description": "Matmul f16→f32 (1024x64 × 64x512)",
    },
    "conv_tiling": {
        "mlir": str(REPO_ROOT / "test/python/mlir/conv_tiling/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/conv_tiling/wrapper.cpp"),
        "func_name": "conv_tiling_hmx",
        "description": "Conv2D NHWC f16 (1x16x32x128, filter 224x1x1x128)",
    },
    "layout_propagation": {
        "mlir": str(REPO_ROOT / "test/python/mlir/layout_propagation/input.mlir"),
        "wrapper": str(REPO_ROOT / "test/python/mlir/layout_propagation/wrapper.cpp"),
        "func_name": "unpack_then_reduce",
        "description": "Unpack+reduce i32 (small, layout test)",
    },
}


def all_permutations():
    """Generate all 24 permutations of the 4 Phase 3 passes."""
    perms = {}
    for i, perm in enumerate(itertools.permutations(REORDERABLE)):
        name = f"perm_{i:02d}"
        perms[name] = list(perm)
    return perms


def key_orderings():
    """Generate the 5 key orderings (ILP-derived + default + worst-case)."""
    return {
        "default": ["HexagonFusion", "HexagonSlicing", "VTCMTiling", "FormVirtualThreads"],
        "fusion_first": ["HexagonFusion", "VTCMTiling", "FormVirtualThreads", "HexagonSlicing"],
        "vtcm_first": ["VTCMTiling", "HexagonFusion", "HexagonSlicing", "FormVirtualThreads"],
        "slicing_first": ["HexagonSlicing", "HexagonFusion", "VTCMTiling", "FormVirtualThreads"],
        "worst_case": ["FormVirtualThreads", "HexagonSlicing", "VTCMTiling", "HexagonFusion"],
    }


def compile_and_run(kernel_info, ordering, ordering_name, output_dir):
    """Compile MLIR with given ordering, link, run on sim, return Pcycles."""
    from triton._C.libtriton import ir, qcom_hexagon_backend
    from hexagon_options import HexagonOptions
    from triton.backends.qcom_hexagon_backend.hexagon_executor import HexagonExecutor

    phase_str = ",".join(ordering)

    # Build options
    opts = {k: str(v) for k, v in HexagonOptions().__dict__.items()}
    opts["phaseOrdering"] = phase_str

    # Compile
    mlir_path = kernel_info["mlir"]
    context = ir.context()
    qcom_hexagon_backend.load_dialects(context)

    try:
        mlir_mod = qcom_hexagon_backend.parse_mlir_module_from_file(mlir_path, context)
        obj_modules = qcom_hexagon_backend.translate_linalg_to_obj(mlir_mod, opts)
    except Exception as e:
        return {"status": "compile_error", "error": str(e)}

    # Save .o
    run_dir = os.path.join(output_dir, ordering_name)
    os.makedirs(run_dir, exist_ok=True)
    obj_path = os.path.join(run_dir, f"{kernel_info['func_name']}.o")
    Path(obj_path).write_bytes(bytes(obj_modules[0]))
    obj_size = len(obj_modules[0])

    # Link
    hexec = HexagonExecutor(opts.get("enableLWP", "False"))
    try:
        so_path = hexec.generate_shared_object(kernel_info["wrapper"], obj_path)
    except Exception as e:
        return {"status": "link_error", "error": str(e), "obj_size": obj_size}

    # Run on simulator — capture output for Pcycles
    import subprocess
    try:
        hexec.run(
            paths_to_shared_libs_local=[so_path],
            input_tensor_paths=[],
            output_paths=[],
            generatePerf=False,
        )
    except Exception as e:
        return {"status": "run_error", "error": str(e), "obj_size": obj_size}

    result = hexec.final_result

    # Parse Pcycles from sim_log if available
    pcycles = None
    insns = None
    log_path = so_path.replace(".so", "_sim.log")
    # The simulator output is in stdout/stderr — check run dir for logs
    for f in Path(run_dir).glob("*.log"):
        try:
            text = f.read_text()
            m = re.search(r'Total:.*Pcycles=(\d+)', text)
            if m:
                pcycles = int(m.group(1))
            m2 = re.search(r'Total:.*Insns=(\d+)', text)
            if m2:
                insns = int(m2.group(1))
        except:
            pass

    return {
        "status": result,
        "pcycles": pcycles,
        "insns": insns,
        "obj_size": obj_size,
        "phase3_order": ordering,
    }


def recalibrate_cost_model(results):
    """Derive cost model weights from measured cycle counts."""
    print("\n" + "=" * 70)
    print("COST MODEL RECALIBRATION")
    print("=" * 70)

    # For each kernel, find which pass position correlates with lower cycles
    all_data = []
    for kernel_name, kernel_results in results.items():
        valid = {k: v for k, v in kernel_results.items() if v.get("pcycles")}
        if len(valid) < 3:
            continue

        pcycles_list = [(k, v["pcycles"], v["phase3_order"]) for k, v in valid.items()]
        pcycles_list.sort(key=lambda x: x[1])

        best_name, best_cycles, best_order = pcycles_list[0]
        worst_name, worst_cycles, worst_order = pcycles_list[-1]
        spread = (worst_cycles - best_cycles) / best_cycles * 100

        print(f"\n  {kernel_name}: {len(valid)} orderings, spread={spread:.2f}%")
        print(f"    Best:  {best_name} ({best_cycles:,} Pcycles) order={best_order}")
        print(f"    Worst: {worst_name} ({worst_cycles:,} Pcycles) order={worst_order}")

        # For each pass, compute average position in good vs bad orderings
        for pass_name in REORDERABLE:
            positions = []
            for name, data in valid.items():
                pos = data["phase3_order"].index(pass_name)
                positions.append((pos, data["pcycles"]))
            all_data.append((kernel_name, pass_name, positions))

    if not all_data:
        print("\n  Not enough data for recalibration.")
        return {}

    # Compute per-pass correlation: does earlier position correlate with fewer cycles?
    print("\n--- Pass Position vs Pcycles Correlation ---")
    weights = {}
    for pass_name in REORDERABLE:
        total_corr = 0
        count = 0
        for kernel_name, pn, positions in all_data:
            if pn != pass_name:
                continue
            if len(positions) < 3:
                continue
            # Pearson-like: do positions and cycles move together?
            import numpy as np
            pos_arr = np.array([p[0] for p in positions], dtype=float)
            cyc_arr = np.array([p[1] for p in positions], dtype=float)
            if np.std(pos_arr) > 0 and np.std(cyc_arr) > 0:
                corr = np.corrcoef(pos_arr, cyc_arr)[0, 1]
                total_corr += corr
                count += 1
                print(f"  {kernel_name}/{pass_name}: r={corr:.3f}")

        avg_corr = total_corr / count if count > 0 else 0
        # Negative correlation = earlier position → more cycles → pass should be later
        # Positive correlation = earlier position → fewer cycles → pass should be earlier
        # Weight = how much we want this pass early (higher = earlier)
        weights[pass_name] = max(0.1, 1.0 - avg_corr)  # Invert: high corr → low weight
        print(f"  {pass_name}: avg_corr={avg_corr:.3f} → weight={weights[pass_name]:.2f}")

    return weights


def main():
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--all-perms", action="store_true",
                        help="Test all 24 permutations (slow, ~2min each)")
    parser.add_argument("--kernels", nargs="*", default=None,
                        help="Specific kernel names to test")
    args = parser.parse_args()

    os.environ.setdefault("RUN_ON_SIM", "1")

    output_dir = str(Path(__file__).resolve().parent / "hw_eval" / "comprehensive_e2e")
    os.makedirs(output_dir, exist_ok=True)

    print("=" * 70)
    print("COMPREHENSIVE E2E PHASE ORDERING EXPERIMENTS")
    print("=" * 70)

    orderings = all_permutations() if args.all_perms else key_orderings()
    print(f"Orderings: {len(orderings)}")

    kernels = TEST_KERNELS
    if args.kernels:
        kernels = {k: v for k, v in TEST_KERNELS.items() if k in args.kernels}
    print(f"Kernels: {list(kernels.keys())}")
    print(f"Total runs: {len(orderings) * len(kernels)}")

    all_results = {}
    for kernel_name, kernel_info in kernels.items():
        print(f"\n{'='*70}")
        print(f"KERNEL: {kernel_name} — {kernel_info['description']}")
        print(f"{'='*70}")

        kernel_dir = os.path.join(output_dir, kernel_name)
        kernel_results = {}

        for i, (ord_name, ordering) in enumerate(orderings.items()):
            tag = f"[{i+1}/{len(orderings)}]"
            print(f"\n  {tag} {ord_name}: {' → '.join(ordering)}", end=" ... ", flush=True)
            t0 = time.time()

            result = compile_and_run(kernel_info, ordering, ord_name, kernel_dir)
            elapsed = time.time() - t0

            status = result.get("status", "unknown")
            pcycles = result.get("pcycles")
            if pcycles:
                print(f"{status} — {pcycles:,} Pcycles ({elapsed:.0f}s)")
            else:
                print(f"{status} ({elapsed:.0f}s)")

            kernel_results[ord_name] = result

        all_results[kernel_name] = kernel_results

        # Print summary for this kernel
        valid = {k: v for k, v in kernel_results.items() if v.get("pcycles")}
        if valid:
            sorted_results = sorted(valid.items(), key=lambda x: x[1]["pcycles"])
            best = sorted_results[0]
            worst = sorted_results[-1]
            speedup = worst[1]["pcycles"] / best[1]["pcycles"]
            print(f"\n  --- {kernel_name} Summary ---")
            print(f"  Best:    {best[0]} = {best[1]['pcycles']:,} Pcycles")
            print(f"  Worst:   {worst[0]} = {worst[1]['pcycles']:,} Pcycles")
            print(f"  Speedup: {speedup:.4f}x ({(speedup-1)*100:.2f}%)")

    # Recalibrate cost model
    new_weights = recalibrate_cost_model(all_results)

    # Save everything
    out_path = os.path.join(output_dir, "comprehensive_results.json")
    with open(out_path, "w") as f:
        json.dump({
            "results": all_results,
            "recalibrated_weights": new_weights,
            "orderings_tested": orderings,
        }, f, indent=2, default=str)
    print(f"\nAll results saved to {out_path}")

    # Final summary
    print(f"\n{'='*70}")
    print("FINAL SUMMARY")
    print(f"{'='*70}")
    for kernel_name, kernel_results in all_results.items():
        valid = {k: v for k, v in kernel_results.items() if v.get("pcycles")}
        if valid:
            sorted_r = sorted(valid.items(), key=lambda x: x[1]["pcycles"])
            best_cyc = sorted_r[0][1]["pcycles"]
            worst_cyc = sorted_r[-1][1]["pcycles"]
            speedup = worst_cyc / best_cyc
            print(f"  {kernel_name}: {speedup:.4f}x speedup ({len(valid)} valid runs)")
        else:
            errors = set(v.get("status") for v in kernel_results.values())
            print(f"  {kernel_name}: NO VALID RUNS (errors: {errors})")


if __name__ == "__main__":
    main()
