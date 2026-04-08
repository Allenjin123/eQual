#!/usr/bin/env python3
"""
Static MLIR IR Feature Extraction for Workload-Aware Cost Model.

Extracts features from MLIR input files to characterize workloads WITHOUT
running any simulations. Features are inspired by AutoPhase (CompilerGym)
and VPUNN (Intel NPU cost model), adapted for linalg-on-tensors MLIR.

Features extracted:
  - Operation type histogram (linalg, tensor, arith, scf, etc.)
  - Tensor shape statistics (dimensions, total elements, arithmetic intensity)
  - Memory access patterns (number of tensor.extract_slice, etc.)
  - Structural features (nesting depth, number of blocks)

Usage:
    python static_features.py                    # Analyze all known kernels
    python static_features.py --mlir path.mlir   # Analyze specific MLIR file
"""

import argparse
import json
import os
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent.parent / "hexagon-mlir"
MLIR_TEST_DIR = REPO_ROOT / "test" / "python" / "mlir"

# Known kernels with their MLIR inputs
KNOWN_KERNELS = {
    "add_2d_kernel": MLIR_TEST_DIR / "add_2d_kernel" / "input.mlir",
    "hexkl_attention": MLIR_TEST_DIR / "hexkl_attention" / "input.mlir",
    "hexkl_linalg_matmul": MLIR_TEST_DIR / "hexkl_linalg_matmul" / "input.mlir",
    "conv_tiling": MLIR_TEST_DIR / "conv_tiling" / "input.mlir",
    "layout_propagation": MLIR_TEST_DIR / "layout_propagation" / "input.mlir",
}


def parse_mlir_features(mlir_path):
    """Extract static features from an MLIR file.

    Returns a dict of feature_name -> value.
    """
    with open(mlir_path) as f:
        content = f.read()
    lines = content.split('\n')

    features = {}

    # ── 1. Operation type histogram ──
    # Count operations by dialect prefix
    op_counts = Counter()
    dialect_counts = Counter()
    for line in lines:
        line = line.strip()
        # Match MLIR operations: %result = dialect.op_name ...
        # or standalone: dialect.op_name ...
        ops = re.findall(r'(?:=\s+)?(\w+\.\w+)', line)
        for op in ops:
            if '.' in op:
                dialect, op_name = op.split('.', 1)
                # Filter out things that aren't ops (e.g., type annotations)
                if dialect in ('linalg', 'tensor', 'arith', 'scf', 'math',
                               'memref', 'bufferization', 'vector', 'func',
                               'hexagonmem', 'affine', 'tosa'):
                    op_counts[op] += 1
                    dialect_counts[dialect] += 1

    features['total_ops'] = sum(op_counts.values())
    features['total_dialects'] = len(dialect_counts)

    # Key operation counts
    features['linalg_ops'] = dialect_counts.get('linalg', 0)
    features['tensor_ops'] = dialect_counts.get('tensor', 0)
    features['arith_ops'] = dialect_counts.get('arith', 0)
    features['scf_ops'] = dialect_counts.get('scf', 0)
    features['math_ops'] = dialect_counts.get('math', 0)
    features['memref_ops'] = dialect_counts.get('memref', 0)
    features['bufferization_ops'] = dialect_counts.get('bufferization', 0)
    features['vector_ops'] = dialect_counts.get('vector', 0)

    # Specific linalg operations
    features['linalg_generic'] = op_counts.get('linalg.generic', 0)
    features['linalg_matmul'] = op_counts.get('linalg.matmul', 0)
    features['linalg_fill'] = op_counts.get('linalg.fill', 0)
    features['linalg_reduce'] = op_counts.get('linalg.reduce', 0)
    features['linalg_conv'] = sum(v for k, v in op_counts.items()
                                   if k.startswith('linalg.conv'))
    features['linalg_transpose'] = op_counts.get('linalg.transpose', 0)

    # Specific tensor operations
    features['tensor_empty'] = op_counts.get('tensor.empty', 0)
    features['tensor_extract_slice'] = op_counts.get('tensor.extract_slice', 0)
    features['tensor_insert_slice'] = op_counts.get('tensor.insert_slice', 0)
    features['tensor_collapse'] = op_counts.get('tensor.collapse_shape', 0)
    features['tensor_expand'] = op_counts.get('tensor.expand_shape', 0)

    # Control flow
    features['scf_for'] = op_counts.get('scf.for', 0)
    features['scf_if'] = op_counts.get('scf.if', 0)
    features['scf_yield'] = op_counts.get('scf.yield', 0)

    # Math ops (indicates transcendental compute)
    features['math_exp'] = op_counts.get('math.exp', 0)
    features['math_log'] = op_counts.get('math.log', 0)
    features['math_sqrt'] = op_counts.get('math.sqrt', 0) + op_counts.get('math.rsqrt', 0)

    # ── 2. Tensor shape statistics ──
    # Extract tensor types: tensor<AxBxCxDtype>
    tensor_types = re.findall(r'tensor<([^>]+)>', content)
    shapes = []
    total_elements = 0
    dtypes = Counter()

    for tt in tensor_types:
        # Parse shape like "1024x64xf16" or "63x16384xf32"
        parts = tt.strip().split('x')
        dims = []
        dtype = None
        for p in parts:
            p = p.strip()
            if re.match(r'^\d+$', p):
                dims.append(int(p))
            elif re.match(r'^[fi]\d+$', p):
                dtype = p
            elif re.match(r'^bf\d+$', p):
                dtype = p

        if dims:
            shapes.append(dims)
            total_elements += _prod(dims)
            if dtype:
                dtypes[dtype] += 1

    features['n_tensors'] = len(shapes)
    features['total_tensor_elements'] = total_elements

    if shapes:
        all_dims = [d for s in shapes for d in s]
        features['max_tensor_dim'] = max(all_dims) if all_dims else 0
        features['min_tensor_dim'] = min(all_dims) if all_dims else 0
        features['mean_tensor_rank'] = sum(len(s) for s in shapes) / len(shapes)
        features['max_tensor_rank'] = max(len(s) for s in shapes)
        features['max_tensor_elements'] = max(_prod(s) for s in shapes)
    else:
        features['max_tensor_dim'] = 0
        features['min_tensor_dim'] = 0
        features['mean_tensor_rank'] = 0
        features['max_tensor_rank'] = 0
        features['max_tensor_elements'] = 0

    # Data type
    features['uses_f16'] = 1 if 'f16' in dtypes else 0
    features['uses_f32'] = 1 if 'f32' in dtypes else 0
    features['uses_i32'] = 1 if 'i32' in dtypes else 0

    # ── 3. Compute characteristics ──
    # Estimate arithmetic intensity
    n_compute_ops = (features['linalg_generic'] + features['linalg_matmul'] +
                     features['linalg_conv'] + features['math_ops'])
    n_memory_ops = (features['tensor_extract_slice'] + features['tensor_insert_slice'] +
                    features['memref_ops'] + features['bufferization_ops'])

    features['compute_ops'] = n_compute_ops
    features['memory_ops'] = n_memory_ops
    features['compute_memory_ratio'] = (n_compute_ops / max(n_memory_ops, 1))

    # Is this a single-op or multi-op kernel?
    features['is_single_op'] = 1 if features['linalg_ops'] <= 2 else 0
    features['is_matmul'] = 1 if features['linalg_matmul'] > 0 else 0
    features['is_conv'] = 1 if features['linalg_conv'] > 0 else 0
    features['has_reduction'] = 1 if features['linalg_reduce'] > 0 else 0
    features['has_transpose'] = 1 if features['linalg_transpose'] > 0 else 0
    features['has_scf_loop'] = 1 if features['scf_for'] > 0 else 0
    features['has_math_transcendental'] = 1 if (features['math_exp'] +
                                                 features['math_log'] +
                                                 features['math_sqrt']) > 0 else 0

    # ── 4. Structural features ──
    features['n_functions'] = content.count('func.func')
    features['n_lines'] = len(lines)

    # Nesting depth (count max indentation)
    max_depth = 0
    for line in lines:
        stripped = line.lstrip()
        if stripped:
            depth = (len(line) - len(stripped)) // 2
            max_depth = max(max_depth, depth)
    features['max_nesting_depth'] = max_depth

    # ── 5. Workload category (derived) ──
    if features['is_matmul'] and features['linalg_ops'] <= 3:
        features['workload_category'] = 'compute_bound'
    elif features['is_conv']:
        features['workload_category'] = 'compute_bound'
    elif features['has_scf_loop'] and features['linalg_ops'] > 5:
        features['workload_category'] = 'mixed'
    elif features['has_math_transcendental']:
        features['workload_category'] = 'mixed'
    elif features['linalg_ops'] <= 2:
        features['workload_category'] = 'bandwidth_bound'
    else:
        features['workload_category'] = 'unknown'

    # Store full op histogram
    features['op_histogram'] = dict(op_counts.most_common(30))

    return features


def _prod(lst):
    """Product of a list of numbers."""
    result = 1
    for x in lst:
        result *= x
    return result


def analyze_all_kernels():
    """Analyze all known kernels and print a comparison."""
    results = {}

    print("=" * 90)
    print("  STATIC MLIR FEATURE EXTRACTION")
    print("=" * 90)

    for kernel_name, mlir_path in KNOWN_KERNELS.items():
        if not mlir_path.exists():
            print(f"\n  {kernel_name}: FILE NOT FOUND")
            continue

        features = parse_mlir_features(mlir_path)
        results[kernel_name] = features

        print(f"\n{'─' * 90}")
        print(f"  {kernel_name}")
        print(f"{'─' * 90}")
        print(f"  Category:          {features['workload_category']}")
        print(f"  Total ops:         {features['total_ops']}")
        print(f"  Linalg ops:        {features['linalg_ops']} (generic={features['linalg_generic']}, "
              f"matmul={features['linalg_matmul']}, conv={features['linalg_conv']}, "
              f"reduce={features['linalg_reduce']})")
        print(f"  Tensor ops:        {features['tensor_ops']}")
        print(f"  SCF control flow:  {features['scf_ops']} (for={features['scf_for']})")
        print(f"  Math transcend.:   {features['math_exp']}exp + {features['math_log']}log + {features['math_sqrt']}sqrt")
        print(f"  Tensors:           {features['n_tensors']} (max {features['max_tensor_elements']} elements)")
        print(f"  Max dim:           {features['max_tensor_dim']}")
        print(f"  Data types:        f16={features['uses_f16']} f32={features['uses_f32']} i32={features['uses_i32']}")
        print(f"  Compute/memory:    {features['compute_memory_ratio']:.2f}")
        print(f"  Nesting depth:     {features['max_nesting_depth']}")

    # Summary comparison table
    print(f"\n{'=' * 90}")
    print("  COMPARISON TABLE")
    print(f"{'=' * 90}")
    print(f"  {'Kernel':<22} {'Category':<16} {'Linalg':<8} {'SCF':<6} {'Math':<6} "
          f"{'Tensors':<8} {'MaxDim':<8} {'C/M':<6}")
    print(f"  {'─'*80}")
    for kernel_name, f in results.items():
        math_count = f['math_exp'] + f['math_log'] + f['math_sqrt']
        print(f"  {kernel_name:<22} {f['workload_category']:<16} {f['linalg_ops']:<8} "
              f"{f['scf_for']:<6} {math_count:<6} {f['n_tensors']:<8} "
              f"{f['max_tensor_dim']:<8} {f['compute_memory_ratio']:.2f}")

    # Save results
    output_dir = Path(__file__).resolve().parent / "pairwise_analysis"
    os.makedirs(output_dir, exist_ok=True)
    output_path = output_dir / "static_features.json"

    # Remove non-serializable fields for JSON
    for kernel_name in results:
        if 'op_histogram' in results[kernel_name]:
            pass  # already a dict, fine for JSON

    with open(output_path, "w") as f:
        json.dump(results, f, indent=2)
    print(f"\n  Features saved to: {output_path}")

    return results


def predict_ordering_preference(features):
    """Given static features, predict which ordering strategy to use.

    This is a simple rule-based model based on our empirical findings from
    add_2d (bandwidth-bound) and attention (mixed). Can be replaced with
    a learned model once more workloads are available.

    Returns a dict of pass-pair preferences.
    """
    preferences = {}

    if features['workload_category'] == 'compute_bound':
        # Compute-bound: ordering doesn't matter much
        preferences['strategy'] = 'default'
        preferences['expected_sensitivity'] = 'low'
        preferences['reason'] = 'Single compute-heavy op, pass ordering has minimal effect'

    elif features['workload_category'] == 'bandwidth_bound':
        # Bandwidth-bound: VTCM-first ordering helps
        preferences['strategy'] = 'vtcm_first'
        preferences['expected_sensitivity'] = 'high'
        preferences['reason'] = 'Memory-bound workload benefits from VTCM promotion before threading'
        preferences['key_pairs'] = {
            ('VTCMTiling', 'FormVirtualThreads'): 'VTCM first (r=0.37)',
            ('DecomposeTensorConcat', 'HexagonTiling'): 'DecompTC late (r=0.31)',
        }

    elif features['workload_category'] == 'mixed':
        # Mixed: DecomposeTensorConcat late is universal
        preferences['strategy'] = 'decomp_late'
        preferences['expected_sensitivity'] = 'high'
        preferences['reason'] = 'Multi-op kernel benefits from keeping tensors intact through fusion/tiling'
        preferences['key_pairs'] = {
            ('DecomposeTensorConcat', 'HexagonVectorization'): 'DecompTC late (r=0.30)',
            ('HexagonTiling', 'SCFThreading'): 'Tiling first (r=-0.29)',
        }

    else:
        preferences['strategy'] = 'default'
        preferences['expected_sensitivity'] = 'unknown'
        preferences['reason'] = 'Unclassified workload, use default ordering'

    return preferences


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Static MLIR feature extraction")
    parser.add_argument("--mlir", type=str, default=None,
                        help="Path to specific MLIR file to analyze")
    args = parser.parse_args()

    if args.mlir:
        features = parse_mlir_features(args.mlir)
        print(json.dumps(features, indent=2))
    else:
        results = analyze_all_kernels()

        # Also show ordering predictions
        print(f"\n{'=' * 90}")
        print("  ORDERING PREDICTIONS (Zero-Shot)")
        print(f"{'=' * 90}")
        for kernel_name, features in results.items():
            pred = predict_ordering_preference(features)
            print(f"\n  {kernel_name}:")
            print(f"    Strategy:    {pred['strategy']}")
            print(f"    Sensitivity: {pred['expected_sensitivity']}")
            print(f"    Reason:      {pred['reason']}")
