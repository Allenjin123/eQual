#!/usr/bin/env python3
"""Extract linalg-on-tensors MLIR from Triton test files.

Strategy: For each test, write a runner script that:
1. Monkey-patches ttir_to_ttsharedir to capture MLIR
2. Loads the test file with relative imports removed
3. Calls the test function with specific params
4. Saves captured MLIR to disk
"""

import os
import sys
import json
import subprocess
import tempfile
from pathlib import Path

REPO_ROOT = Path("/home/allenjin/Projects/qualcomm-mlir/hexagon-mlir")
TEST_DIR = REPO_ROOT / "test/python/triton"
OUTPUT_DIR = Path("/tmp/triton_mlir_extracts")

# Tests to extract: (test_file, test_func, params_dict, kernel_name)
TESTS = [
    ("test_softmax.py",        "test_softmax",        {"dtype": "torch.float32"}, "triton_softmax_f32"),
    ("test_softmax.py",        "test_softmax",        {"dtype": "torch.float16"}, "triton_softmax_f16"),
    ("test_layer_norm.py",     "test_layer_norm",      {"num_cols": 8192, "num_threads": 1, "dtype": "torch.float32"}, "triton_layer_norm_f32"),
    ("test_rms_norm.py",       "test_rms_norm",        {"num_threads": 1, "dtype": "torch.float32"}, "triton_rms_norm_f32"),
    ("test_rms_norm.py",       "test_rms_norm",        {"num_threads": 1, "dtype": "torch.float16"}, "triton_rms_norm_f16"),
    ("test_gelu.py",           "test_gelu",            {"num_elements": 16384, "num_threads": 1, "dtype": "torch.float32", "enable_mt": True}, "triton_gelu_f32"),
    ("test_gelu.py",           "test_gelu",            {"num_elements": 16384, "num_threads": 1, "dtype": "torch.float16", "enable_mt": True}, "triton_gelu_f16"),
    ("test_silu.py",           "test_silu",            {"num_elements": 16384, "num_threads": 1, "dtype": "torch.float32"}, "triton_silu_f32"),
    ("test_silu.py",           "test_silu",            {"num_elements": 16384, "num_threads": 1, "dtype": "torch.float16"}, "triton_silu_f16"),
    ("test_matmul.py",         "test_matmul",          {"num_rows": 1024, "num_cols": 512, "num_inner": 64}, "triton_matmul_1024x512x64"),
    ("test_sum.py",            "test_vec_add",         {"num_elements": 1048576, "dtype": "torch.float32"}, "triton_sum_f32"),
    ("test_online_softmax.py", "test_online_softmax",  {"num_threads": 1}, "triton_online_softmax"),
    ("test_rope.py",           "test_rope",            {"num_threads": 1, "dtype": "torch.float32"}, "triton_rope_f32"),
    ("test_rsqrt.py",          "test_rsqrt",           {}, "triton_rsqrt"),
    ("test_math_ops.py",       "test_math_ops",        {}, "triton_math_ops"),
    ("test_vec_add.py",        "test_vec_add",         {}, "triton_vec_add"),
    ("test_vec_add_2d.py",     "test_vec_add",         {}, "triton_vec_add_2d"),
    ("test_vec_div_2d.py",     "test_vec_div",         {}, "triton_vec_div_2d"),
    ("test_flash_attention.py","test_flash_attention",  {}, "triton_flash_attention"),
]


def run_extraction(test_file, test_func, params, kernel_name):
    """Run one extraction via the generic runner, return (kernel_name, mlir_paths, error)."""
    out_dir = OUTPUT_DIR / kernel_name
    os.makedirs(out_dir, exist_ok=True)

    config = {
        "test_file": str(TEST_DIR / test_file),
        "test_func": test_func,
        "params": params,
        "kernel_name": kernel_name,
        "output_dir": str(out_dir),
        "repo_root": str(REPO_ROOT),
    }
    config_path = out_dir / "config.json"
    with open(config_path, "w") as f:
        json.dump(config, f)

    runner_path = Path(__file__).parent / "triton_mlir_runner.py"
    result = subprocess.run(
        [sys.executable, str(runner_path), str(config_path)],
        cwd=str(REPO_ROOT.parent),
        env=os.environ.copy(),
        capture_output=True,
        text=True,
        timeout=120,
    )

    print(f"\n{'='*60}")
    print(f"Kernel: {kernel_name}")
    if result.stdout.strip():
        print(f"  stdout: {result.stdout.strip()}")
    if result.stderr:
        stderr_lines = result.stderr.strip().split("\n")
        show = stderr_lines[-5:] if len(stderr_lines) > 5 else stderr_lines
        for line in show:
            print(f"  stderr: {line}")

    result_path = out_dir / "result.json"
    if result_path.exists():
        with open(result_path) as f:
            data = json.load(f)
        return kernel_name, data.get("mlir_files", []), data.get("error")
    else:
        return kernel_name, [], f"returncode={result.returncode}"


def main():
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    results = {}
    for test_file, test_func, params, kernel_name in TESTS:
        try:
            name, mlir_paths, error = run_extraction(test_file, test_func, params, kernel_name)
            results[name] = {"mlir_paths": mlir_paths, "error": error}
        except subprocess.TimeoutExpired:
            print(f"\n  TIMEOUT: {kernel_name}")
            results[kernel_name] = {"mlir_paths": [], "error": "timeout"}
        except Exception as e:
            print(f"\n  EXCEPTION: {kernel_name}: {e}")
            results[kernel_name] = {"mlir_paths": [], "error": str(e)}

    print(f"\n{'='*60}")
    print("SUMMARY")
    print(f"{'='*60}")
    succeeded = []
    failed = []
    for name, info in results.items():
        if info["mlir_paths"]:
            succeeded.append(name)
            print(f"  OK:   {name} ({len(info['mlir_paths'])} files)")
        else:
            failed.append(name)
            print(f"  FAIL: {name} ({info['error']})")

    print(f"\nSucceeded: {len(succeeded)}/{len(results)}")
    print(f"Failed:    {len(failed)}/{len(results)}")

    with open(OUTPUT_DIR / "results.json", "w") as f:
        json.dump(results, f, indent=2)

    return results


if __name__ == "__main__":
    main()
