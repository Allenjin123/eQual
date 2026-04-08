#!/usr/bin/env python3
"""
analyze_hw_results.py - Analyze Hexagon hardware evaluation results.

Reads cycle-count data from results/all_results.json, computes speedups,
correlates with synthetic cost model predictions, and generates
publication-quality tables and figures.

Usage:
    python3 analyze_hw_results.py
"""

import json
import os
import sys
from pathlib import Path
from collections import defaultdict

SCRIPT_DIR = Path(__file__).parent
RESULTS_DIR = SCRIPT_DIR / "results"
FIGURES_DIR = SCRIPT_DIR / "figures"


def load_results():
    """Load benchmark results from JSON."""
    json_path = RESULTS_DIR / "all_results.json"
    if not json_path.exists():
        # Try parsing from text files
        results = []
        import re
        for txt in RESULTS_DIR.glob("bench_*.txt"):
            with open(txt) as f:
                for line in f:
                    m = re.match(
                        r"RESULT: bench=(\S+) variant=(\S+) cycles=(\d+) n=(\d+)",
                        line,
                    )
                    if m:
                        results.append(
                            {
                                "benchmark": m.group(1),
                                "variant": m.group(2),
                                "cycles": int(m.group(3)),
                                "n": int(m.group(4)),
                            }
                        )
        return results

    with open(json_path) as f:
        return json.load(f)


def analyze_speedups(results):
    """Compute speedups for each benchmark."""
    # Group by benchmark
    by_bench = defaultdict(dict)
    for r in results:
        by_bench[r["benchmark"]][r["variant"]] = r["cycles"]

    print("=" * 72)
    print("HARDWARE EVALUATION RESULTS — Hexagon v73 Simulator")
    print("=" * 72)

    speedup_data = {}

    # --- Fusion ---
    if "fusion" in by_bench:
        d = by_bench["fusion"]
        unfused = d.get("unfused", 0)
        fused = d.get("fused", 0)
        speedup = unfused / fused if fused > 0 else 0
        print(f"\n1. FUSION (HexagonFusion pass effect)")
        print(f"   Unfused (3 loops): {unfused:>12,} cycles")
        print(f"   Fused   (1 loop):  {fused:>12,} cycles")
        print(f"   Speedup:           {speedup:>12.2f}x")
        print(f"   Reduction:         {(1 - fused / unfused) * 100:>11.1f}%")
        speedup_data["fusion"] = {
            "baseline": unfused, "optimized": fused, "speedup": speedup
        }

    # --- Tiling ---
    if "tiling" in by_bench:
        d = by_bench["tiling"]
        untiled = d.get("untiled", 0)
        tiled = d.get("tiled", 0)
        speedup = untiled / tiled if tiled > 0 else 0
        print(f"\n2. TILING (VTCMTiling pass effect)")
        print(f"   Untiled: {untiled:>12,} cycles")
        print(f"   Tiled:   {tiled:>12,} cycles")
        print(f"   Speedup: {speedup:>12.2f}x")
        print(f"   Reduction: {(1 - tiled / untiled) * 100:>11.1f}%")
        speedup_data["tiling"] = {
            "baseline": untiled, "optimized": tiled, "speedup": speedup
        }

    # --- Loop Order ---
    if "loop_order" in by_bench:
        d = by_bench["loop_order"]
        ijk = d.get("ijk", 0)
        ikj = d.get("ikj", 0)
        blocked = d.get("blocked", 0)
        best = min(ikj, blocked) if ikj > 0 and blocked > 0 else max(ikj, blocked)
        speedup_ikj = ijk / ikj if ikj > 0 else 0
        speedup_blk = ijk / blocked if blocked > 0 else 0
        print(f"\n3. LOOP ORDER (ScheduleMatmulForHVX pass effect)")
        print(f"   ijk (default):  {ijk:>12,} cycles")
        print(f"   ikj (reorder):  {ikj:>12,} cycles  ({speedup_ikj:.2f}x)")
        print(f"   blocked (tile): {blocked:>12,} cycles  ({speedup_blk:.2f}x)")
        speedup_data["loop_order"] = {
            "baseline": ijk,
            "ikj": ikj,
            "blocked": blocked,
            "speedup_ikj": speedup_ikj,
            "speedup_blocked": speedup_blk,
        }

    # --- Scalar Hoist ---
    if "scalar_hoist" in by_bench:
        d = by_bench["scalar_hoist"]
        nonhoisted = d.get("non_hoisted", 0)
        hoisted = d.get("hoisted", 0)
        speedup = nonhoisted / hoisted if hoisted > 0 else 0
        print(f"\n4. SCALAR HOIST (HoistScalarOps pass effect)")
        print(f"   Non-hoisted: {nonhoisted:>12,} cycles")
        print(f"   Hoisted:     {hoisted:>12,} cycles")
        print(f"   Speedup:     {speedup:>12.2f}x")
        print(f"   Reduction:   {(1 - hoisted / nonhoisted) * 100:>11.1f}%")
        speedup_data["scalar_hoist"] = {
            "baseline": nonhoisted, "optimized": hoisted, "speedup": speedup
        }

    # --- Interaction ---
    if "interaction" in by_bench:
        d = by_bench["interaction"]
        none_c = d.get("none", 0)
        fuse_c = d.get("fusion_only", 0)
        tile_c = d.get("tiling_only", 0)
        both_c = d.get("fusion_and_tiling", 0)

        fuse_reduction = (1 - fuse_c / none_c) * 100 if none_c > 0 else 0
        tile_reduction = (1 - tile_c / none_c) * 100 if none_c > 0 else 0
        both_reduction = (1 - both_c / none_c) * 100 if none_c > 0 else 0
        additive = fuse_reduction + tile_reduction
        interaction_effect = both_reduction - additive

        print(f"\n5. PASS INTERACTION (non-linear cost model validation)")
        print(f"   No optimizations:      {none_c:>12,} cycles")
        print(f"   Fusion only:           {fuse_c:>12,} cycles  (-{fuse_reduction:.1f}%)")
        print(f"   Tiling only:           {tile_c:>12,} cycles  (-{tile_reduction:.1f}%)")
        print(f"   Fusion + Tiling:       {both_c:>12,} cycles  (-{both_reduction:.1f}%)")
        print(f"   ---")
        print(f"   Additive prediction:   -{additive:.1f}%")
        print(f"   Actual combined:       -{both_reduction:.1f}%")
        print(f"   Interaction effect:    {interaction_effect:+.1f}% (non-linear)")
        if interaction_effect > 0:
            print(f"   -> Super-additive: combined effect exceeds sum of individual")
        elif interaction_effect < 0:
            print(f"   -> Sub-additive: diminishing returns when combining")
        else:
            print(f"   -> Additive: no interaction effect detected")

        speedup_data["interaction"] = {
            "none": none_c,
            "fusion_only": fuse_c,
            "tiling_only": tile_c,
            "fusion_and_tiling": both_c,
            "fuse_reduction_pct": fuse_reduction,
            "tile_reduction_pct": tile_reduction,
            "both_reduction_pct": both_reduction,
            "interaction_effect_pct": interaction_effect,
        }

    return speedup_data


def correlate_with_cost_model(speedup_data):
    """Compare HW speedups with synthetic cost model weights."""
    print("\n" + "=" * 72)
    print("COST MODEL CORRELATION")
    print("=" * 72)

    # Synthetic cost model weights from the paper
    cost_weights = {
        "fusion": {"weight": 3.0, "label": "HexagonFusion"},
        "tiling": {"weight": 3.0, "label": "VTCMTiling"},
        "loop_order": {"weight": 1.0, "label": "ScheduleMatmulForHVX"},
        "scalar_hoist": {"weight": 0.5, "label": "HoistScalarOps"},
    }

    print(f"\n{'Pass':<25} {'Cost Weight':>12} {'HW Speedup':>12} {'Consistent?':>12}")
    print("-" * 65)

    hw_speedups = {}
    for bench, info in cost_weights.items():
        if bench in speedup_data:
            if bench == "loop_order":
                sp = speedup_data[bench].get("speedup_blocked", 0)
            else:
                sp = speedup_data[bench].get("speedup", 0)
            hw_speedups[bench] = sp
            consistent = "YES" if sp > 1.0 else "NO"
            print(
                f"  {info['label']:<23} {info['weight']:>12.1f} {sp:>12.2f}x {consistent:>12}"
            )

    # Rank correlation
    if len(hw_speedups) >= 2:
        # Sort by cost weight and by HW speedup
        weight_rank = sorted(cost_weights.keys(),
                             key=lambda k: cost_weights[k]["weight"], reverse=True)
        hw_rank = sorted(hw_speedups.keys(),
                         key=lambda k: hw_speedups[k], reverse=True)
        print(f"\n  Cost model rank:  {' > '.join(cost_weights[k]['label'] for k in weight_rank)}")
        print(f"  HW speedup rank:  {' > '.join(cost_weights[k]['label'] for k in hw_rank)}")

        # Compute rank correlation (Spearman)
        from itertools import combinations
        concordant = 0
        discordant = 0
        for a, b in combinations(cost_weights.keys(), 2):
            if a in hw_speedups and b in hw_speedups:
                w_cmp = cost_weights[a]["weight"] - cost_weights[b]["weight"]
                h_cmp = hw_speedups[a] - hw_speedups[b]
                if w_cmp * h_cmp > 0:
                    concordant += 1
                elif w_cmp * h_cmp < 0:
                    discordant += 1
        total = concordant + discordant
        if total > 0:
            tau = (concordant - discordant) / total
            print(f"\n  Kendall's tau: {tau:.3f} (1.0 = perfect agreement)")

    return hw_speedups


def generate_latex_table(speedup_data, hw_speedups):
    """Generate a LaTeX table for the paper."""
    print("\n" + "=" * 72)
    print("LATEX TABLE (for paper)")
    print("=" * 72)

    pass_names = {
        "fusion": "HexagonFusion",
        "tiling": "VTCMTiling",
        "loop_order": "ScheduleMatmulForHVX",
        "scalar_hoist": "HoistScalarOps",
    }

    latex = r"""
\begin{table}[t]
\centering
\caption{Hardware-validated pass impact: cycle counts on Hexagon v73 simulator.
Each row compares the output of a pipeline with vs.\ without the named pass.}
\label{tab:hw-eval}
\begin{tabular}{lrrr}
\toprule
\textbf{Pass (Optimization)} & \textbf{Without} & \textbf{With} & \textbf{Speedup} \\
\midrule"""

    for bench in ["fusion", "tiling", "loop_order", "scalar_hoist"]:
        if bench in speedup_data:
            d = speedup_data[bench]
            name = pass_names.get(bench, bench)
            if bench == "loop_order":
                baseline = d.get("baseline", 0)
                optimized = d.get("blocked", 0)
                sp = d.get("speedup_blocked", 0)
            else:
                baseline = d.get("baseline", 0)
                optimized = d.get("optimized", 0)
                sp = d.get("speedup", 0)
            latex += f"\n{name} & {baseline:,} & {optimized:,} & {sp:.2f}$\\times$ \\\\"

    latex += r"""
\midrule
\multicolumn{4}{l}{\textit{Pass Interaction (Fusion $\times$ Tiling):}} \\"""

    if "interaction" in speedup_data:
        d = speedup_data["interaction"]
        latex += f"""
No optimization & {d['none']:,} & --- & 1.00$\\times$ \\\\
Fusion only & --- & {d['fusion_only']:,} & $-${d['fuse_reduction_pct']:.1f}\\% \\\\
Tiling only & --- & {d['tiling_only']:,} & $-${d['tile_reduction_pct']:.1f}\\% \\\\
Both (interaction) & --- & {d['fusion_and_tiling']:,} & $-${d['both_reduction_pct']:.1f}\\% \\\\"""

    latex += r"""
\bottomrule
\end{tabular}
\end{table}"""

    print(latex)

    # Save to file
    table_path = FIGURES_DIR / "hw_eval_table.tex"
    with open(table_path, "w") as f:
        f.write(latex)
    print(f"\nSaved to {table_path}")


def generate_figures(speedup_data):
    """Generate publication-quality figures."""
    try:
        import matplotlib
        matplotlib.use("Agg")
        import matplotlib.pyplot as plt
        import numpy as np
    except ImportError:
        print("\nWARNING: matplotlib not available, skipping figure generation")
        return

    os.makedirs(FIGURES_DIR, exist_ok=True)

    # --- Figure 1: Pass Impact Bar Chart ---
    fig, ax = plt.subplots(figsize=(6, 3.5))

    pass_labels = []
    speedups = []
    label_map = {
        "fusion": "Fusion",
        "tiling": "Tiling",
        "loop_order": "Loop Reorder",
        "scalar_hoist": "Scalar Hoist",
    }

    for bench in ["fusion", "tiling", "loop_order", "scalar_hoist"]:
        if bench in speedup_data:
            pass_labels.append(label_map.get(bench, bench))
            if bench == "loop_order":
                speedups.append(speedup_data[bench].get("speedup_blocked", 1.0))
            else:
                speedups.append(speedup_data[bench].get("speedup", 1.0))

    if pass_labels:
        colors = ["#2196F3", "#4CAF50", "#FF9800", "#9C27B0"]
        bars = ax.bar(pass_labels, speedups, color=colors[: len(pass_labels)], width=0.6)
        ax.axhline(y=1.0, color="gray", linestyle="--", linewidth=0.8)
        ax.set_ylabel("Speedup (x)")
        ax.set_title("Individual Pass Impact on Hexagon v73")
        for bar, sp in zip(bars, speedups):
            ax.text(
                bar.get_x() + bar.get_width() / 2,
                bar.get_height() + 0.02,
                f"{sp:.2f}x",
                ha="center",
                va="bottom",
                fontsize=9,
            )
        plt.tight_layout()
        fig.savefig(FIGURES_DIR / "pass_impact.pdf", bbox_inches="tight")
        fig.savefig(FIGURES_DIR / "pass_impact.png", dpi=200, bbox_inches="tight")
        print(f"Saved pass_impact figure")
        plt.close()

    # --- Figure 2: Interaction Effect ---
    if "interaction" in speedup_data:
        d = speedup_data["interaction"]
        fig, ax = plt.subplots(figsize=(5, 3.5))

        labels = ["None", "Fusion\nonly", "Tiling\nonly", "Both"]
        cycles = [d["none"], d["fusion_only"], d["tiling_only"], d["fusion_and_tiling"]]
        colors = ["#E0E0E0", "#2196F3", "#4CAF50", "#FF5722"]

        bars = ax.bar(labels, cycles, color=colors, width=0.6)
        ax.set_ylabel("Cycles")
        ax.set_title("Pass Interaction: Fusion × Tiling")

        # Add additive prediction line
        additive_pred = d["none"] * (
            1 - (d["fuse_reduction_pct"] + d["tile_reduction_pct"]) / 100
        )
        ax.axhline(
            y=additive_pred,
            color="red",
            linestyle="--",
            linewidth=1.5,
            label=f"Additive prediction",
        )
        ax.legend(fontsize=8)

        for bar, c in zip(bars, cycles):
            ax.text(
                bar.get_x() + bar.get_width() / 2,
                bar.get_height(),
                f"{c:,}",
                ha="center",
                va="bottom",
                fontsize=8,
            )

        plt.tight_layout()
        fig.savefig(FIGURES_DIR / "interaction.pdf", bbox_inches="tight")
        fig.savefig(FIGURES_DIR / "interaction.png", dpi=200, bbox_inches="tight")
        print(f"Saved interaction figure")
        plt.close()


def save_summary(speedup_data, hw_speedups):
    """Save a comprehensive summary JSON."""
    summary = {
        "platform": "Hexagon v73 (hexagon-sim)",
        "benchmarks": speedup_data,
        "hw_speedups": hw_speedups,
    }

    summary_path = RESULTS_DIR / "hw_eval_summary.json"
    with open(summary_path, "w") as f:
        json.dump(summary, f, indent=2)
    print(f"\nSaved summary to {summary_path}")


def main():
    results = load_results()
    if not results:
        print("ERROR: No results found. Run ./run_hw_eval.sh first.")
        sys.exit(1)

    print(f"Loaded {len(results)} benchmark results\n")

    speedup_data = analyze_speedups(results)
    hw_speedups = correlate_with_cost_model(speedup_data)

    os.makedirs(FIGURES_DIR, exist_ok=True)
    generate_latex_table(speedup_data, hw_speedups)
    generate_figures(speedup_data)
    save_summary(speedup_data, hw_speedups)

    print("\n" + "=" * 72)
    print("ANALYSIS COMPLETE")
    print("=" * 72)


if __name__ == "__main__":
    main()
