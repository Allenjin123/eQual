#!/usr/bin/env python3
"""
Analyze pass ordering experiments — compute speedups and generate paper tables.

Reads RESULT lines from results/*.txt files and computes:
1. Ordering impact: e-graph optimal vs default ordering
2. Fusion-tiling ordering: fuse-then-tile vs tile-then-fuse
3. Size sweep: consistency of speedup across data sizes
4. Matmul epilogue: compute-bound workload
"""

import re
import json
from pathlib import Path

RESULTS_DIR = Path(__file__).parent / "results"

def parse_results(filename):
    """Parse RESULT lines from a simulator output file."""
    results = []
    path = RESULTS_DIR / filename
    if not path.exists():
        return results
    with open(path) as f:
        for line in f:
            m = re.match(r'RESULT: bench=(\S+) variant=(\S+) cycles=(\d+) n=(\d+)', line)
            if m:
                results.append({
                    'benchmark': m.group(1),
                    'variant': m.group(2),
                    'cycles': int(m.group(3)),
                    'n': int(m.group(4))
                })
    return results

def get_cycles(results, variant):
    for r in results:
        if r['variant'] == variant:
            return r['cycles']
    return None

# ============================================================
# 1. Ordering impact (5-op chain)
# ============================================================
print("=" * 70)
print("EXPERIMENT 1: Pass Ordering Impact (5-op elementwise chain)")
print("=" * 70)
for opt in ['O1', 'O3']:
    results = parse_results(f'bench_ordering_{opt}.txt')
    if not results:
        continue
    default = get_cycles(results, 'default_5loops')
    partial = get_cycles(results, 'partial_3loops')
    egraph = get_cycles(results, 'egraph_1loop')
    print(f"\n  At -{opt}:")
    print(f"    Default (5 loops):      {default:>12,} cycles")
    print(f"    Partial fusion (3 grp): {partial:>12,} cycles  ({default/partial:.2f}x vs default)")
    print(f"    E-graph optimal (1 lp): {egraph:>12,} cycles  ({default/egraph:.2f}x vs default)")

# ============================================================
# 2. Fusion-tiling ordering
# ============================================================
print("\n" + "=" * 70)
print("EXPERIMENT 2: Fusion-Tiling Ordering Impact")
print("=" * 70)
for opt in ['O1', 'O3']:
    results = parse_results(f'bench_fuse_tile_order_{opt}.txt')
    if not results:
        continue
    tile_fuse = get_cycles(results, 'tile_then_fuse')
    fuse_tile = get_cycles(results, 'fuse_then_tile')
    fuse_only = get_cycles(results, 'fuse_no_tile')
    unfused   = get_cycles(results, 'unfused_untiled')
    print(f"\n  At -{opt}:")
    print(f"    Tile-then-fuse:   {tile_fuse:>12,} cycles  (baseline)")
    print(f"    Fuse-then-tile:   {fuse_tile:>12,} cycles  ({tile_fuse/fuse_tile:.2f}x speedup)")
    print(f"    Fuse only:        {fuse_only:>12,} cycles  ({tile_fuse/fuse_only:.2f}x)")
    print(f"    Unfused/untiled:  {unfused:>12,} cycles  ({tile_fuse/unfused:.2f}x)")

# ============================================================
# 3. Size sweep (3-op chain)
# ============================================================
print("\n" + "=" * 70)
print("EXPERIMENT 3: Size Sweep (3-op chain, fused vs unfused)")
print("=" * 70)
for opt in ['O1', 'O3']:
    results = parse_results(f'bench_size_sweep_{opt}.txt')
    if not results:
        continue
    print(f"\n  At -{opt}:")
    sizes = [1, 16, 64, 256, 1024]
    for s in sizes:
        unfused = get_cycles(results, f'unfused_{s}k')
        fused = get_cycles(results, f'fused_{s}k')
        if unfused and fused:
            print(f"    {s:>4}K ({s*4:>5}KB): unfused={unfused:>12,}  fused={fused:>12,}  speedup={unfused/fused:.2f}x")

# ============================================================
# 4. Matmul epilogue
# ============================================================
print("\n" + "=" * 70)
print("EXPERIMENT 4: Matmul + Epilogue Fusion (compute-bound)")
print("=" * 70)
for opt in ['O1', 'O3']:
    results = parse_results(f'bench_matmul_epilogue_{opt}.txt')
    if not results:
        continue
    separate = get_cycles(results, 'separate')
    fused = get_cycles(results, 'fused')
    print(f"\n  At -{opt}:")
    print(f"    Separate epilogue: {separate:>12,} cycles")
    print(f"    Fused epilogue:    {fused:>12,} cycles  ({separate/fused:.2f}x)")

# ============================================================
# Summary table for paper
# ============================================================
print("\n" + "=" * 70)
print("SUMMARY: Speedup from E-Graph Optimal Ordering")
print("=" * 70)
print(f"\n{'Workload':<35} {'O3 Speedup':>12} {'O1 Speedup':>12}")
print("-" * 60)

# Ordering
for opt in ['O3', 'O1']:
    r = parse_results(f'bench_ordering_{opt}.txt')
    if r:
        d = get_cycles(r, 'default_5loops')
        e = get_cycles(r, 'egraph_1loop')
        if opt == 'O3':
            o3_ord = f"{d/e:.2f}x"
        else:
            o1_ord = f"{d/e:.2f}x"
print(f"{'5-op chain (fusion ordering)':<35} {o3_ord:>12} {o1_ord:>12}")

# Sweep 256K
for opt in ['O3', 'O1']:
    r = parse_results(f'bench_size_sweep_{opt}.txt')
    if r:
        u = get_cycles(r, 'unfused_256k')
        f_ = get_cycles(r, 'fused_256k')
        if opt == 'O3':
            o3_sw = f"{u/f_:.2f}x"
        else:
            o1_sw = f"{u/f_:.2f}x"
print(f"{'3-op chain, 1MB (fusion)':<35} {o3_sw:>12} {o1_sw:>12}")

# Fuse-tile
for opt in ['O3', 'O1']:
    r = parse_results(f'bench_fuse_tile_order_{opt}.txt')
    if r:
        tf = get_cycles(r, 'tile_then_fuse')
        ft = get_cycles(r, 'fuse_then_tile')
        if opt == 'O3':
            o3_ft = f"{tf/ft:.2f}x"
        else:
            o1_ft = f"{tf/ft:.2f}x"
print(f"{'2-op chain (fuse→tile vs tile→fuse)':<35} {o3_ft:>12} {o1_ft:>12}")

# Matmul
for opt in ['O3', 'O1']:
    r = parse_results(f'bench_matmul_epilogue_{opt}.txt')
    if r:
        s = get_cycles(r, 'separate')
        f_ = get_cycles(r, 'fused')
        if opt == 'O3':
            o3_mm = f"{s/f_:.2f}x"
        else:
            o1_mm = f"{s/f_:.2f}x"
print(f"{'Matmul+epilogue (compute-bound)':<35} {o3_mm:>12} {o1_mm:>12}")

# ============================================================
# Generate JSON for all ordering results
# ============================================================
all_results = {}
for bench in ['bench_ordering', 'bench_fuse_tile_order', 'bench_size_sweep', 'bench_matmul_epilogue']:
    for opt in ['O1', 'O3']:
        r = parse_results(f'{bench}_{opt}.txt')
        if r:
            all_results[f'{bench}_{opt}'] = r

with open(RESULTS_DIR / 'ordering_all.json', 'w') as f:
    json.dump(all_results, f, indent=2)

print(f"\nWrote combined results to {RESULTS_DIR / 'ordering_all.json'}")
