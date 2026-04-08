#!/usr/bin/env python3
"""
Static analysis of LLVM IR generated under different Phase 3 orderings.

Compares the kernel function across orderings to quantify the impact of
pass ordering on generated code quality.
"""

import json
import os
import re
import sys
from collections import defaultdict
from pathlib import Path


def extract_kernel_function(ll_path, kernel_name):
    """Extract the main kernel function body from LLVM IR."""
    text = Path(ll_path).read_text()
    # Find the kernel function
    pattern = rf'^define[^@]*@{kernel_name}\b.*?\n\}}'
    match = re.search(pattern, text, re.MULTILINE | re.DOTALL)
    if match:
        return match.group(0)
    return None


def analyze_function(func_text, name):
    """Analyze a single LLVM IR function."""
    lines = func_text.split('\n')
    metrics = {}

    # Basic blocks (labels ending with :)
    basic_blocks = sum(1 for l in lines if re.match(r'^\w+:', l.strip()))
    metrics['basic_blocks'] = basic_blocks + 1  # entry block

    # Total instructions (non-empty, non-label, non-comment lines)
    instructions = sum(1 for l in lines
                       if l.strip() and not l.strip().startswith(';')
                       and not re.match(r'^\w+:', l.strip())
                       and not l.strip().startswith('define')
                       and l.strip() != '}')
    metrics['instructions'] = instructions

    # Memory operations
    metrics['loads'] = sum(1 for l in lines if ' load ' in l)
    metrics['stores'] = sum(1 for l in lines if ' store ' in l)
    metrics['alloca'] = sum(1 for l in lines if ' alloca ' in l)
    metrics['getelementptr'] = sum(1 for l in lines if 'getelementptr' in l)

    # Arithmetic
    metrics['fadd'] = sum(1 for l in lines if ' fadd ' in l)
    metrics['fmul'] = sum(1 for l in lines if ' fmul ' in l)
    metrics['add'] = sum(1 for l in lines if re.search(r'\badd\b', l))
    metrics['mul'] = sum(1 for l in lines if re.search(r'\bmul\b', l))

    # Control flow
    metrics['branches'] = sum(1 for l in lines if ' br ' in l)
    metrics['calls'] = sum(1 for l in lines if ' call ' in l)
    metrics['phi_nodes'] = sum(1 for l in lines if ' phi ' in l)

    # Vector/HVX
    metrics['vector_ops'] = sum(1 for l in lines if '<' in l and 'x' in l and ('float' in l or 'i32' in l or 'i16' in l))
    metrics['shufflevector'] = sum(1 for l in lines if 'shufflevector' in l)

    # Function size
    metrics['lines'] = len(lines)
    metrics['bytes'] = len(func_text)

    return metrics


def analyze_full_ir(ll_path):
    """Analyze the full LLVM IR file."""
    text = Path(ll_path).read_text()
    metrics = {}
    metrics['total_lines'] = text.count('\n')
    metrics['total_bytes'] = len(text)
    metrics['num_functions'] = len(re.findall(r'^define\b', text, re.MULTILINE))
    metrics['num_globals'] = len(re.findall(r'^@\w+\s*=', text, re.MULTILINE))
    return metrics


def main():
    script_dir = Path(__file__).resolve().parent
    orderings = ['default', 'hw-calibrated', 'fusion-first', 'vtcm-first', 'worst-case']

    results = {}

    for kernel in ['add_2d_kernel', 'hexkl_linalg_matmul']:
        kernel_dir = script_dir / kernel
        if not kernel_dir.exists():
            continue

        kernel_name = {
            'add_2d_kernel': 'add_2d_mlir',
            'hexkl_linalg_matmul': 'hexkl_linalg_matmul',
        }[kernel]

        print(f"\n{'='*70}")
        print(f"KERNEL: {kernel}")
        print(f"{'='*70}")

        kernel_results = {}
        for ordering in orderings:
            ll_path = kernel_dir / f'{ordering}.ll'
            o_path = kernel_dir / f'{ordering}.o'
            if not ll_path.exists():
                continue

            func_text = extract_kernel_function(str(ll_path), kernel_name)
            if func_text is None:
                print(f"  WARNING: Could not extract {kernel_name} from {ordering}.ll")
                continue

            func_metrics = analyze_function(func_text, kernel_name)
            full_metrics = analyze_full_ir(str(ll_path))
            obj_size = o_path.stat().st_size if o_path.exists() else 0

            kernel_results[ordering] = {
                'kernel': func_metrics,
                'full_ir': full_metrics,
                'obj_size': obj_size,
            }

        # Print comparison table
        if not kernel_results:
            continue

        # Kernel function metrics
        print(f"\n--- Kernel Function: {kernel_name}() ---")
        metric_keys = list(next(iter(kernel_results.values()))['kernel'].keys())
        header = f"{'Metric':<20}"
        for o in orderings:
            if o in kernel_results:
                header += f" {o:>14}"
        print(header)
        print('-' * len(header))

        for key in metric_keys:
            row = f"{key:<20}"
            for o in orderings:
                if o in kernel_results:
                    row += f" {kernel_results[o]['kernel'][key]:>14}"
            print(row)

        # Check for differences
        print(f"\n--- Pairwise Differences (kernel function) ---")
        for i, a in enumerate(orderings):
            if a not in kernel_results:
                continue
            for b in orderings[i+1:]:
                if b not in kernel_results:
                    continue
                diffs = []
                for key in metric_keys:
                    va = kernel_results[a]['kernel'][key]
                    vb = kernel_results[b]['kernel'][key]
                    if va != vb:
                        diffs.append(f"{key}: {va} vs {vb}")
                if diffs:
                    print(f"  {a} vs {b}: {len(diffs)} differences")
                    for d in diffs[:5]:
                        print(f"    {d}")
                else:
                    print(f"  {a} vs {b}: IDENTICAL")

        # Object file sizes
        print(f"\n--- Object File Sizes ---")
        for o in orderings:
            if o in kernel_results:
                print(f"  {o}: {kernel_results[o]['obj_size']:,} bytes")

        results[kernel] = kernel_results

    # Save results
    out_path = script_dir / 'ir_analysis.json'
    with open(out_path, 'w') as f:
        json.dump(results, f, indent=2)
    print(f"\nAnalysis saved to {out_path}")


if __name__ == '__main__':
    main()
