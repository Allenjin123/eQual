#!/usr/bin/env python3
"""
Generate MLIR workload variants for phase ordering evaluation.

Creates new MLIR kernels by modifying the add_2d_kernel template with:
- Different operations (mul, sub, max, fused add+relu, fused add+mul)
- Different tensor sizes
- Multiple operations (chains of elementwise ops)

All variants reuse the add_2d_kernel wrapper (same function signature,
same tensor shapes). The correctness check may fail but Pcycles are
still valid for ordering evaluation.
"""

import os
import shutil
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent.parent / "hexagon-mlir"
TEMPLATE_DIR = REPO_ROOT / "test" / "python" / "mlir" / "add_2d_kernel"
OUTPUT_BASE = REPO_ROOT / "test" / "python" / "mlir"

# Template for a single elementwise binary op
SINGLE_OP_TEMPLATE = '''func.func @add_2d_mlir(%arg0: memref<*xf32> {{tt.divisibility = 16 : i32}}, %arg1: memref<*xf32> {{tt.divisibility = 16 : i32}}, %arg2: memref<*xf32> {{tt.divisibility = 16 : i32}}, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32) {{
  %c0 = arith.constant 0 : index
  %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [%c0], sizes: [{rows}, {cols}], strides: [{cols}, 1] : memref<*xf32> to memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>>
  %reinterpret_cast_0 = memref.reinterpret_cast %arg1 to offset: [%c0], sizes: [{rows}, {cols}], strides: [{cols}, 1] : memref<*xf32> to memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>>
  %reinterpret_cast_1 = memref.reinterpret_cast %arg2 to offset: [%c0], sizes: [{rows}, {cols}], strides: [{cols}, 1] : memref<*xf32> to memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>>
  %alloc = memref.alloc() : memref<{rows}x{cols}xf32>
  %0 = bufferization.to_tensor %reinterpret_cast restrict : memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>> to tensor<{rows}x{cols}xf32>
  %alloc_2 = memref.alloc() : memref<{rows}x{cols}xf32>
  %1 = bufferization.to_tensor %reinterpret_cast_0 restrict : memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>> to tensor<{rows}x{cols}xf32>
  %2 = linalg.generic {{indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}} ins(%0, %1 : tensor<{rows}x{cols}xf32>, tensor<{rows}x{cols}xf32>) outs(%0 : tensor<{rows}x{cols}xf32>) {{
  ^bb0(%in: f32, %in_3: f32, %out: f32):
    {body}
    linalg.yield {yield_val} : f32
  }} -> tensor<{rows}x{cols}xf32>
  bufferization.materialize_in_destination %2 in writable %reinterpret_cast_1 : (tensor<{rows}x{cols}xf32>, memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>>) -> ()
  return
}}
'''

# Template for chained ops (2 linalg.generic in sequence)
CHAIN_TEMPLATE = '''func.func @add_2d_mlir(%arg0: memref<*xf32> {{tt.divisibility = 16 : i32}}, %arg1: memref<*xf32> {{tt.divisibility = 16 : i32}}, %arg2: memref<*xf32> {{tt.divisibility = 16 : i32}}, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32) {{
  %c0 = arith.constant 0 : index
  %cst = arith.constant 0.000000e+00 : f32
  %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [%c0], sizes: [{rows}, {cols}], strides: [{cols}, 1] : memref<*xf32> to memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>>
  %reinterpret_cast_0 = memref.reinterpret_cast %arg1 to offset: [%c0], sizes: [{rows}, {cols}], strides: [{cols}, 1] : memref<*xf32> to memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>>
  %reinterpret_cast_1 = memref.reinterpret_cast %arg2 to offset: [%c0], sizes: [{rows}, {cols}], strides: [{cols}, 1] : memref<*xf32> to memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>>
  %0 = bufferization.to_tensor %reinterpret_cast restrict : memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>> to tensor<{rows}x{cols}xf32>
  %1 = bufferization.to_tensor %reinterpret_cast_0 restrict : memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>> to tensor<{rows}x{cols}xf32>
  %2 = linalg.generic {{indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}} ins(%0, %1 : tensor<{rows}x{cols}xf32>, tensor<{rows}x{cols}xf32>) outs(%0 : tensor<{rows}x{cols}xf32>) {{
  ^bb0(%in: f32, %in_3: f32, %out: f32):
    {body1}
    linalg.yield {yield1} : f32
  }} -> tensor<{rows}x{cols}xf32>
  %3 = linalg.generic {{indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}} ins(%2 : tensor<{rows}x{cols}xf32>) outs(%2 : tensor<{rows}x{cols}xf32>) {{
  ^bb0(%in: f32, %out: f32):
    {body2}
    linalg.yield {yield2} : f32
  }} -> tensor<{rows}x{cols}xf32>
  bufferization.materialize_in_destination %3 in writable %reinterpret_cast_1 : (tensor<{rows}x{cols}xf32>, memref<{rows}x{cols}xf32, strided<[{cols}, 1], offset: ?>>) -> ()
  return
}}
'''

# Workload variants to generate
VARIANTS = {
    # Single elementwise ops (bandwidth-bound, different ops)
    "mul_2d_kernel": {
        "template": "single",
        "rows": 63, "cols": 16384,
        "body": "%3 = arith.mulf %in, %in_3 : f32",
        "yield_val": "%3",
        "description": "Elementwise f32 multiply (63x16384)",
        "category": "bandwidth",
    },
    "sub_2d_kernel": {
        "template": "single",
        "rows": 63, "cols": 16384,
        "body": "%3 = arith.subf %in, %in_3 : f32",
        "yield_val": "%3",
        "description": "Elementwise f32 subtract (63x16384)",
        "category": "bandwidth",
    },
    "max_2d_kernel": {
        "template": "single",
        "rows": 63, "cols": 16384,
        "body": "%3 = arith.maximumf %in, %in_3 : f32",
        "yield_val": "%3",
        "description": "Elementwise f32 max (63x16384)",
        "category": "bandwidth",
    },
    # Fused operations (2 linalg.generic = multiple ops, more sensitive)
    "add_relu_kernel": {
        "template": "chain",
        "rows": 63, "cols": 16384,
        "body1": "%3 = arith.addf %in, %in_3 : f32",
        "yield1": "%3",
        "body2": "%cst_zero = arith.constant 0.000000e+00 : f32\n    %3 = arith.maximumf %in, %cst_zero : f32",
        "yield2": "%3",
        "description": "Fused add+relu f32 (63x16384, 2 linalg ops)",
        "category": "bandwidth",
    },
    "add_mul_kernel": {
        "template": "chain",
        "rows": 63, "cols": 16384,
        "body1": "%3 = arith.addf %in, %in_3 : f32",
        "yield1": "%3",
        "body2": "%3 = arith.mulf %in, %in : f32",
        "yield2": "%3",
        "description": "Fused add+square f32 (63x16384, 2 linalg ops)",
        "category": "bandwidth",
    },
    # Different sizes (test size sensitivity)
    "add_small_kernel": {
        "template": "single",
        "rows": 16, "cols": 4096,
        "body": "%3 = arith.addf %in, %in_3 : f32",
        "yield_val": "%3",
        "description": "Elementwise f32 add SMALL (16x4096)",
        "category": "bandwidth",
    },
    "add_large_kernel": {
        "template": "single",
        "rows": 128, "cols": 16384,
        "body": "%3 = arith.addf %in, %in_3 : f32",
        "yield_val": "%3",
        "description": "Elementwise f32 add LARGE (128x16384)",
        "category": "bandwidth",
    },
}


def generate_variant(name, spec):
    """Generate a single workload variant."""
    out_dir = OUTPUT_BASE / name
    os.makedirs(out_dir, exist_ok=True)

    # Generate MLIR
    if spec["template"] == "single":
        mlir = SINGLE_OP_TEMPLATE.format(
            rows=spec["rows"], cols=spec["cols"],
            body=spec["body"], yield_val=spec["yield_val"],
        )
    elif spec["template"] == "chain":
        mlir = CHAIN_TEMPLATE.format(
            rows=spec["rows"], cols=spec["cols"],
            body1=spec["body1"], yield1=spec["yield1"],
            body2=spec["body2"], yield2=spec["yield2"],
        )

    mlir_path = out_dir / "input.mlir"
    with open(mlir_path, "w") as f:
        f.write(mlir)

    # Copy wrapper from add_2d_kernel (same interface)
    # Adjust BLOCK_SIZE in the wrapper
    wrapper_src = TEMPLATE_DIR / "wrapper.cpp"
    wrapper_dst = out_dir / "wrapper.cpp"

    with open(wrapper_src) as f:
        wrapper_content = f.read()

    # Replace BLOCK_SIZE
    new_block_size = spec["rows"] * spec["cols"]
    wrapper_content = wrapper_content.replace(
        "const int BLOCK_SIZE = 63 * 16384;",
        f"const int BLOCK_SIZE = {spec['rows']} * {spec['cols']};"
    )
    # Replace tensor sizes in Tensor constructor
    wrapper_content = wrapper_content.replace(
        "{{63, 16384}, {16384, 1}, 128}",
        f"{{{{{spec['rows']}, {spec['cols']}}}, {{{spec['cols']}, 1}}, 128}}"
    )

    with open(wrapper_dst, "w") as f:
        f.write(wrapper_content)

    return mlir_path, wrapper_dst


def main():
    print("=" * 80)
    print("  GENERATING WORKLOAD VARIANTS")
    print("=" * 80)

    generated = {}
    for name, spec in VARIANTS.items():
        mlir_path, wrapper_path = generate_variant(name, spec)
        generated[name] = {
            "mlir": str(mlir_path),
            "wrapper": str(wrapper_path),
            "func_name": "add_2d_mlir",  # Same interface as add_2d
            "description": spec["description"],
            "category": spec["category"],
        }
        print(f"  {name}: {spec['description']}")
        print(f"    MLIR:    {mlir_path}")
        print(f"    Wrapper: {wrapper_path}")

    # Save kernel definitions for use by run_paper_experiments.py
    output_path = Path(__file__).resolve().parent / "generated_kernels.json"
    with open(output_path, "w") as f:
        json.dump(generated, f, indent=2)
    print(f"\n  Kernel definitions saved to: {output_path}")
    print(f"  Total: {len(generated)} new kernels + {5} existing = {len(generated)+5}")

    return generated


import json
if __name__ == "__main__":
    main()
