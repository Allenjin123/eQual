#!/usr/bin/env python3
"""Parse comprehensive experiment output to extract cycle count results.

Usage:
  python parse_results.py <output_file>
  python parse_results.py /tmp/.../tasks/b3bwmk0zf.output
"""

import json
import re
import sys
from collections import defaultdict
from pathlib import Path


def parse_output(filepath):
    text = Path(filepath).read_text()
    lines = text.split('\n')

    current_kernel = None
    current_ordering = None
    results = []

    for line in lines:
        if 'KERNEL:' in line and '—' in line:
            current_kernel = line.split('KERNEL:')[1].split('—')[0].strip()
        m = re.match(r'\s+\[\d+/\d+\]\s+(\S+):', line)
        if m:
            current_ordering = m.group(1)
        m2 = re.search(r'Total:\s+Insns=(\d+)\s+Pcycles=(\d+)', line)
        if m2 and current_kernel and current_ordering:
            insns = int(m2.group(1))
            pcycles = int(m2.group(2))
            results.append({
                "kernel": current_kernel,
                "ordering": current_ordering,
                "pcycles": pcycles,
                "insns": insns,
            })

    return results


def analyze(results):
    by_kernel = defaultdict(list)
    for r in results:
        by_kernel[r["kernel"]].append(r)

    summary = {}
    for kernel, data in by_kernel.items():
        data.sort(key=lambda x: x["pcycles"])
        best = data[0]
        worst = data[-1]
        speedup = worst["pcycles"] / best["pcycles"]

        summary[kernel] = {
            "num_orderings": len(data),
            "best": {"ordering": best["ordering"], "pcycles": best["pcycles"]},
            "worst": {"ordering": worst["ordering"], "pcycles": worst["pcycles"]},
            "speedup": speedup,
            "all": data,
        }

        print(f"\n=== {kernel} ({len(data)} orderings) ===")
        print(f"  Speedup: {speedup:.4f}x ({(speedup-1)*100:.2f}%)")
        for r in data:
            rel = r["pcycles"] / best["pcycles"]
            print(f"  {r['ordering']:20s} {r['pcycles']:>15,} Pcycles ({rel:.4f}x)")

    return summary


def main():
    if len(sys.argv) < 2:
        # Try default location
        import glob
        candidates = glob.glob("/tmp/claude-*/**/tasks/b3bwmk0zf.output", recursive=True)
        if candidates:
            filepath = candidates[0]
        else:
            print("Usage: python parse_results.py <output_file>")
            sys.exit(1)
    else:
        filepath = sys.argv[1]

    print(f"Parsing: {filepath}")
    results = parse_output(filepath)
    print(f"Found {len(results)} completed runs")

    summary = analyze(results)

    out_path = Path(__file__).resolve().parent / "parsed_results.json"
    with open(out_path, "w") as f:
        json.dump(summary, f, indent=2, default=str)
    print(f"\nSaved to {out_path}")


if __name__ == "__main__":
    main()
