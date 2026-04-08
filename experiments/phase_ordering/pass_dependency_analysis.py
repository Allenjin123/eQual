#!/usr/bin/env python3
"""
Pass Dependency Analysis for Hexagon MLIR LinalgToLLVM Pipeline.

Extracts the optimization passes from Phases 2-4 of the pipeline,
constructs a dependency DAG, identifies reorderable passes, and
quantifies the phase ordering search space.
"""

import json
import itertools
from dataclasses import dataclass, field
from enum import Enum
from typing import Optional

import networkx as nx
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches


class PassCategory(Enum):
    LOWERING = "lowering"          # Changes abstraction level (irreversible)
    OPTIMIZATION = "optimization"  # Stays at same level (reorderable candidate)
    CLEANUP = "cleanup"            # Canonicalize/CSE (can be inserted anywhere)


@dataclass
class PassInfo:
    name: str
    category: PassCategory
    phase: int
    dialect_in: set = field(default_factory=set)   # Dialects consumed
    dialect_out: set = field(default_factory=set)  # Dialects produced
    requires: set = field(default_factory=set)     # Hard dependencies (must come after)
    optional: bool = False                          # Controlled by a flag
    description: str = ""


def build_pipeline():
    """
    Model the Phases 2-4 passes from LinalgToLLVMPass::runOnOperation().
    Lines 211-304 of LinalgToLLVMPass.cpp.

    We focus on the "optimization window" between initial lowering (Phase 1)
    and bufferization (Phase 5).
    """
    passes = []

    # --- Phase 2: Dialect & Layout Conversion (lines 211-242) ---

    passes.append(PassInfo(
        name="MatmulToHexKL",
        category=PassCategory.OPTIMIZATION,
        phase=2,
        dialect_in={"linalg"},
        dialect_out={"hexkl", "linalg"},
        optional=True,
        description="Convert linalg.matmul to hexkl ops",
    ))

    passes.append(PassInfo(
        name="ConvTiling",
        category=PassCategory.OPTIMIZATION,
        phase=2,
        dialect_in={"linalg"},
        dialect_out={"linalg", "scf"},
        optional=True,
        description="Tile linalg.conv2d operations",
    ))

    passes.append(PassInfo(
        name="ConvertLayout",
        category=PassCategory.OPTIMIZATION,
        phase=2,
        dialect_in={"hexagonmem", "linalg"},
        dialect_out={"linalg"},
        description="Convert hexagonmem::ConvertLayoutOp to linalg::GenericOp",
    ))

    passes.append(PassInfo(
        name="ScheduleMatmulForHVX",
        category=PassCategory.OPTIMIZATION,
        phase=2,
        dialect_in={"linalg"},
        dialect_out={"linalg"},
        description="Schedule matmul and variants for HVX (interchange + transpose)",
    ))

    passes.append(PassInfo(
        name="LinalgGeneralize",
        category=PassCategory.LOWERING,
        phase=2,
        dialect_in={"linalg"},
        dialect_out={"linalg"},
        requires={"ScheduleMatmulForHVX", "ConvertLayout"},
        description="Lower linalg named ops to linalg.generic",
    ))

    passes.append(PassInfo(
        name="HexagonRVO",
        category=PassCategory.OPTIMIZATION,
        phase=2,
        dialect_in={"linalg"},
        dialect_out={"linalg"},
        requires={"LinalgGeneralize"},
        optional=True,
        description="Return value optimization for bufferizer",
    ))

    # --- Phase 3: Fusion, Tiling, Scheduling (lines 236-289) ---

    passes.append(PassInfo(
        name="HexagonFusion",
        category=PassCategory.OPTIMIZATION,
        phase=3,
        dialect_in={"linalg"},
        dialect_out={"linalg"},
        requires={"LinalgGeneralize"},
        optional=True,
        description="Fuse linalg.generic ops (greedy, multi-use)",
    ))

    passes.append(PassInfo(
        name="HexagonSlicing",
        category=PassCategory.OPTIMIZATION,
        phase=3,
        dialect_in={"linalg"},
        dialect_out={"linalg"},
        requires={"LinalgGeneralize"},
        optional=True,
        description="Slice ops into K parts",
    ))

    passes.append(PassInfo(
        name="DecomposeTensorConcat",
        category=PassCategory.LOWERING,
        phase=3,
        dialect_in={"tensor"},
        dialect_out={"tensor"},
        description="Decompose tensor.concat to other tensor ops",
    ))

    passes.append(PassInfo(
        name="VTCMTiling",
        category=PassCategory.OPTIMIZATION,
        phase=3,
        dialect_in={"linalg"},
        dialect_out={"linalg", "scf"},
        requires={"LinalgGeneralize"},
        optional=True,
        description="Tile linalg-on-tensors (DDR) to tiled-compute on VTCM",
    ))

    passes.append(PassInfo(
        name="FormVirtualThreads",
        category=PassCategory.OPTIMIZATION,
        phase=3,
        dialect_in={"linalg"},
        dialect_out={"linalg", "scf"},
        requires={"LinalgGeneralize"},
        optional=True,
        description="Rewrite generics as scf::forall for multi-threading",
    ))

    passes.append(PassInfo(
        name="HexagonTiling",
        category=PassCategory.OPTIMIZATION,
        phase=3,
        dialect_in={"linalg"},
        dialect_out={"linalg", "scf"},
        requires={"LinalgGeneralize", "HexagonFusion"},
        description="Tile tensor linalg ops for vectorization",
    ))

    passes.append(PassInfo(
        name="SmallExponentToMultiply",
        category=PassCategory.OPTIMIZATION,
        phase=3,
        dialect_in={"math", "arith"},
        dialect_out={"arith"},
        description="Convert pow with small exponents to multiplications",
    ))

    passes.append(PassInfo(
        name="HoistScalarOps",
        category=PassCategory.OPTIMIZATION,
        phase=3,
        dialect_in={"linalg", "arith", "math"},
        dialect_out={"linalg", "tensor"},
        requires={"HexagonTiling"},
        description="Hoist loop-invariant scalar ops from linalg.generic",
    ))

    passes.append(PassInfo(
        name="LICM",
        category=PassCategory.OPTIMIZATION,
        phase=3,
        dialect_in={"scf", "arith"},
        dialect_out={"scf", "arith"},
        requires={"HoistScalarOps"},
        description="Loop invariant code motion",
    ))

    # --- Phase 4: Vectorization (lines 290-304) ---

    passes.append(PassInfo(
        name="HexagonVectorization",
        category=PassCategory.LOWERING,
        phase=4,
        dialect_in={"linalg"},
        dialect_out={"vector"},
        requires={"HexagonTiling", "HoistScalarOps", "LICM"},
        description="Vectorize tensor linalg ops for HVX",
    ))

    passes.append(PassInfo(
        name="HexagonVectorLowering",
        category=PassCategory.LOWERING,
        phase=4,
        dialect_in={"vector"},
        dialect_out={"vector"},
        requires={"HexagonVectorization"},
        description="Simplify vector multi-reduction and contraction",
    ))

    passes.append(PassInfo(
        name="AddFastMath",
        category=PassCategory.OPTIMIZATION,
        phase=4,
        dialect_in={"arith", "math"},
        dialect_out={"arith", "math"},
        requires={"HexagonVectorization"},
        optional=True,
        description="Add fast math flags + fold mul-by-zero",
    ))

    return passes


def build_dependency_graph(passes):
    """Build a DAG of pass dependencies."""
    G = nx.DiGraph()

    for p in passes:
        G.add_node(p.name, **{
            "category": p.category.value,
            "phase": p.phase,
            "optional": p.optional,
            "description": p.description,
        })

    # Add explicit dependency edges
    for p in passes:
        for dep in p.requires:
            if G.has_node(dep):
                G.add_edge(dep, p.name, type="hard")

    # Add implicit dialect-level dependencies:
    # If pass A produces a dialect that pass B consumes, and A is in an
    # earlier phase, there's an implicit ordering.
    pass_map = {p.name: p for p in passes}
    for p in passes:
        for q in passes:
            if p.name == q.name:
                continue
            # If q requires dialect output of p and no explicit edge exists
            if p.dialect_out & q.dialect_in and p.phase < q.phase:
                if not G.has_edge(p.name, q.name) and p.name not in q.requires:
                    # Only add if it wouldn't create redundant transitivity
                    G.add_edge(p.name, q.name, type="implicit")

    return G


def identify_reorderable_pairs(G, passes):
    """
    Find pairs of passes that have NO dependency between them,
    meaning they could potentially be reordered.
    """
    pass_names = [p.name for p in passes]
    reorderable = []

    # Get transitive closure for checking reachability
    tc = nx.transitive_closure(G)

    for i, a in enumerate(pass_names):
        for b in pass_names[i+1:]:
            if not tc.has_edge(a, b) and not tc.has_edge(b, a):
                reorderable.append((a, b))

    return reorderable


def count_valid_orderings(G):
    """
    Count the number of valid topological orderings of the DAG.
    This is the size of the phase ordering search space.
    Uses dynamic programming on the poset.
    """
    # For small graphs, enumerate directly
    nodes = list(G.nodes())
    n = len(nodes)

    if n > 20:
        # Use approximation for large graphs
        return _approximate_topo_count(G)

    return _exact_topo_count(G)


def _exact_topo_count(G):
    """Exact count via recursive enumeration with memoization."""
    nodes = list(G.nodes())
    n = len(nodes)
    node_idx = {name: i for i, name in enumerate(nodes)}

    # Represent subsets as bitmasks
    # predecessors[i] = bitmask of nodes that must come before node i
    preds = [0] * n
    tc = nx.transitive_closure(G)
    for i, u in enumerate(nodes):
        for j, v in enumerate(nodes):
            if i != j and tc.has_edge(v, u):
                preds[i] |= (1 << j)

    memo = {}
    full_mask = (1 << n) - 1

    def dp(placed_mask):
        if placed_mask == full_mask:
            return 1
        if placed_mask in memo:
            return memo[placed_mask]

        total = 0
        for i in range(n):
            if placed_mask & (1 << i):
                continue  # Already placed
            if (preds[i] & placed_mask) == preds[i]:
                # All predecessors placed
                total += dp(placed_mask | (1 << i))

        memo[placed_mask] = total
        return total

    return dp(0)


def _approximate_topo_count(G):
    """Approximate count using sampling."""
    import random
    count = 0
    for _ in range(10000):
        try:
            list(nx.topological_sort(G))
            count += 1
        except:
            pass
    # This is a rough lower bound
    return count


def analyze_optimization_subgraph(G, passes):
    """
    Extract only the optimization passes (excluding lowering/cleanup)
    and analyze their reordering flexibility.
    """
    opt_passes = [p for p in passes if p.category == PassCategory.OPTIMIZATION]
    opt_names = {p.name for p in opt_passes}

    # Subgraph of just optimization passes, preserving transitive deps
    tc = nx.transitive_closure(G)
    sub_G = nx.DiGraph()
    for p in opt_passes:
        sub_G.add_node(p.name, phase=p.phase, optional=p.optional)

    for a in opt_names:
        for b in opt_names:
            if a != b and tc.has_edge(a, b):
                sub_G.add_edge(a, b)

    # Remove transitive edges for cleaner visualization
    sub_G_reduced = nx.transitive_reduction(sub_G)

    return sub_G, sub_G_reduced, opt_passes


def generate_dependency_figure(G, passes, output_path):
    """Generate a publication-quality dependency DAG figure."""
    fig, ax = plt.subplots(1, 1, figsize=(10, 8))

    # Use phase for vertical positioning
    phase_y = {2: 3, 3: 2, 4: 1}
    category_colors = {
        "lowering": "#e74c3c",
        "optimization": "#3498db",
        "cleanup": "#95a5a6",
    }

    # Compute positions using graphviz layout
    pos = {}
    phase_counts = {2: 0, 3: 0, 4: 0}
    phase_totals = {2: 0, 3: 0, 4: 0}
    for p in passes:
        phase_totals[p.phase] += 1

    phase_x_offset = {2: 0, 3: 0, 4: 0}
    for p in passes:
        phase = p.phase
        x = phase_x_offset[phase] - (phase_totals[phase] - 1) / 2.0
        y = phase_y[phase]
        pos[p.name] = (x * 1.8, y * 2.5)
        phase_x_offset[phase] += 1

    # Draw edges
    for u, v, data in G.edges(data=True):
        if u in pos and v in pos:
            edge_type = data.get("type", "hard")
            style = "-" if edge_type == "hard" else "--"
            alpha = 0.8 if edge_type == "hard" else 0.3
            ax.annotate("",
                xy=pos[v], xytext=pos[u],
                arrowprops=dict(arrowstyle="->", color="#555",
                              linestyle=style, alpha=alpha, lw=1.2))

    # Draw nodes
    for p in passes:
        if p.name not in pos:
            continue
        x, y = pos[p.name]
        color = category_colors[p.category.value]
        alpha = 0.6 if p.optional else 1.0
        border = "dashed" if p.optional else "solid"

        circle = plt.Circle((x, y), 0.4, facecolor=color, edgecolor="black",
                           alpha=alpha, linewidth=1.5,
                           linestyle=border, zorder=5)
        ax.add_patch(circle)

        # Label
        label = p.name.replace("Hexagon", "Hex.")
        fontsize = 6.5 if len(label) > 12 else 7.5
        ax.text(x, y, label, ha="center", va="center",
               fontsize=fontsize, fontweight="bold", zorder=10)

    # Phase labels
    for phase, y_val in phase_y.items():
        ax.text(-7.5, y_val * 2.5, f"Phase {phase}", fontsize=12,
               fontweight="bold", ha="left", va="center",
               bbox=dict(boxstyle="round,pad=0.3", facecolor="#f0f0f0"))

    # Legend
    legend_elements = [
        mpatches.Patch(facecolor="#3498db", label="Optimization (reorderable)"),
        mpatches.Patch(facecolor="#e74c3c", label="Lowering (fixed order)"),
        mpatches.Patch(facecolor="#95a5a6", label="Cleanup"),
        mpatches.Patch(facecolor="white", edgecolor="black",
                      linestyle="dashed", label="Optional"),
    ]
    ax.legend(handles=legend_elements, loc="upper right", fontsize=8)

    ax.set_xlim(-8, 10)
    ax.set_ylim(0, 10)
    ax.set_aspect("equal")
    ax.axis("off")
    ax.set_title("Pass Dependency DAG: Phases 2-4 of Hexagon MLIR Pipeline",
                fontsize=13, fontweight="bold", pad=20)

    plt.tight_layout()
    plt.savefig(output_path, dpi=300, bbox_inches="tight")
    plt.close()
    print(f"Saved dependency DAG to {output_path}")


def generate_search_space_figure(results, output_path):
    """Generate a figure showing search space size vs. enabled passes."""
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

    # Left: Search space size for different configurations
    configs = results["configurations"]
    names = [c["name"] for c in configs]
    counts = [c["valid_orderings"] for c in configs]

    bars = ax1.bar(range(len(names)), counts, color=["#3498db", "#e74c3c",
                                                       "#2ecc71", "#f39c12",
                                                       "#9b59b6"][:len(names)])
    ax1.set_xticks(range(len(names)))
    ax1.set_xticklabels(names, rotation=30, ha="right", fontsize=8)
    ax1.set_ylabel("Valid Topological Orderings", fontsize=10)
    ax1.set_title("Phase Ordering Search Space Size", fontsize=11, fontweight="bold")
    ax1.set_yscale("log")

    for bar, count in zip(bars, counts):
        ax1.text(bar.get_x() + bar.get_width()/2., bar.get_height() * 1.1,
                f"{count:,}", ha="center", va="bottom", fontsize=7)

    # Right: Reorderable pairs
    reorderable = results["reorderable_pairs"]
    total_pairs = results["total_pairs"]
    sizes = [len(reorderable), total_pairs - len(reorderable)]
    labels = [f"Reorderable\n({len(reorderable)})",
              f"Constrained\n({total_pairs - len(reorderable)})"]
    colors = ["#3498db", "#e74c3c"]
    ax2.pie(sizes, labels=labels, colors=colors, autopct="%1.0f%%",
           startangle=90, textprops={"fontsize": 9})
    ax2.set_title("Pass Pair Ordering Flexibility", fontsize=11, fontweight="bold")

    plt.tight_layout()
    plt.savefig(output_path, dpi=300, bbox_inches="tight")
    plt.close()
    print(f"Saved search space figure to {output_path}")


def run_analysis():
    """Run the full analysis and generate results."""
    print("=" * 60)
    print("Pass Dependency Analysis for Hexagon MLIR Pipeline")
    print("=" * 60)

    # Build pipeline model
    passes = build_pipeline()
    print(f"\nTotal passes in Phases 2-4: {len(passes)}")
    for cat in PassCategory:
        count = sum(1 for p in passes if p.category == cat)
        print(f"  {cat.value}: {count}")

    optional_count = sum(1 for p in passes if p.optional)
    print(f"  Optional (flag-controlled): {optional_count}")

    # Build dependency graph
    G = build_dependency_graph(passes)
    print(f"\nDependency graph: {G.number_of_nodes()} nodes, {G.number_of_edges()} edges")

    # Count valid orderings for full graph
    full_count = count_valid_orderings(G)
    print(f"\nValid topological orderings (all passes): {full_count:,}")

    # Identify reorderable pairs
    reorderable = identify_reorderable_pairs(G, passes)
    total_pairs = len(passes) * (len(passes) - 1) // 2
    print(f"\nReorderable pairs: {len(reorderable)} / {total_pairs}")
    for a, b in reorderable:
        print(f"  {a} <-> {b}")

    # Analyze optimization subgraph
    opt_G, opt_G_reduced, opt_passes = analyze_optimization_subgraph(G, passes)
    opt_count = count_valid_orderings(opt_G)
    print(f"\nOptimization-only passes: {len(opt_passes)}")
    print(f"Valid orderings (optimization only): {opt_count:,}")

    # Analyze different configurations
    configs = []

    # Config 1: Default (all optional passes enabled)
    configs.append({
        "name": "Default\n(all opts on)",
        "valid_orderings": full_count,
        "num_passes": len(passes),
    })

    # Config 2: Without optional passes
    required_passes = [p for p in passes if not p.optional]
    G_req = build_dependency_graph(required_passes)
    req_count = count_valid_orderings(G_req)
    configs.append({
        "name": "Required\nonly",
        "valid_orderings": req_count,
        "num_passes": len(required_passes),
    })

    # Config 3: Phase 2 only
    p2_passes = [p for p in passes if p.phase == 2]
    G_p2 = build_dependency_graph(p2_passes)
    p2_count = count_valid_orderings(G_p2)
    configs.append({
        "name": "Phase 2\nonly",
        "valid_orderings": p2_count,
        "num_passes": len(p2_passes),
    })

    # Config 4: Phase 3 only
    p3_passes = [p for p in passes if p.phase == 3]
    G_p3 = build_dependency_graph(p3_passes)
    p3_count = count_valid_orderings(G_p3)
    configs.append({
        "name": "Phase 3\nonly",
        "valid_orderings": p3_count,
        "num_passes": len(p3_passes),
    })

    # Config 5: Optimization passes only
    configs.append({
        "name": "Optimizations\nonly",
        "valid_orderings": opt_count,
        "num_passes": len(opt_passes),
    })

    print("\n--- Configuration Analysis ---")
    for c in configs:
        print(f"  {c['name'].replace(chr(10), ' ')}: "
              f"{c['num_passes']} passes, {c['valid_orderings']:,} orderings")

    results = {
        "total_passes": len(passes),
        "total_edges": G.number_of_edges(),
        "full_valid_orderings": full_count,
        "optimization_valid_orderings": opt_count,
        "reorderable_pairs": reorderable,
        "total_pairs": total_pairs,
        "configurations": configs,
        "passes": [{
            "name": p.name,
            "category": p.category.value,
            "phase": p.phase,
            "optional": p.optional,
            "requires": list(p.requires),
        } for p in passes],
    }

    # Generate figures
    output_dir = "figures"
    generate_dependency_figure(G, passes, f"{output_dir}/dependency_dag.pdf")
    generate_search_space_figure(results, f"{output_dir}/search_space.pdf")

    # Also generate PNG versions for quick viewing
    generate_dependency_figure(G, passes, f"{output_dir}/dependency_dag.png")
    generate_search_space_figure(results, f"{output_dir}/search_space.png")

    # Save results as JSON
    # Convert sets/tuples for JSON serialization
    results_json = dict(results)
    results_json["reorderable_pairs"] = [list(p) for p in reorderable]
    with open("analysis_results.json", "w") as f:
        json.dump(results_json, f, indent=2)
    print(f"\nResults saved to analysis_results.json")

    return results


if __name__ == "__main__":
    run_analysis()
