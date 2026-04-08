#!/usr/bin/env python3
"""
E-Graph Model for Pass Ordering Exploration.

Two complementary approaches:
1. egglog-based: Demonstrates rewrite rules for pass commutativity
   using the egglog equality saturation library.
2. Pure-Python BFS: Enumerates all valid orderings reachable via
   adjacent-swap commutativity rules (simulates equality saturation).
"""

from egglog import *
import json
import time

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Patch


# ============================================================
# Part 1: egglog Demonstration
# ============================================================

def run_egglog_demo():
    """
    Demonstrate equality saturation for pass ordering using egglog.
    Models a 3-pass sub-problem where two passes commute.
    """
    print("=" * 60)
    print("Part 1: egglog Equality Saturation Demo")
    print("=" * 60)

    # Define a pass sequence type
    class PassSeq(Expr):
        """A sequence of compiler passes."""
        @classmethod
        def empty(cls) -> "PassSeq": ...

        @classmethod
        def single(cls, name: StringLike) -> "PassSeq": ...

        def then(self, other: "PassSeq") -> "PassSeq": ...

    egraph = EGraph()

    # Define pass atoms
    with egraph:
        fusion = PassSeq.single("Fusion")
        slicing = PassSeq.single("Slicing")
        vtcm = PassSeq.single("VTCMTiling")
        tiling = PassSeq.single("Tiling")
        hoist = PassSeq.single("HoistScalar")

        # The default ordering
        default = fusion.then(slicing).then(vtcm).then(tiling).then(hoist)
        egraph.register(default)

        # Commutativity rules: passes that can be swapped
        a, b, c = vars_("a b c", PassSeq)

        # Fusion <-> Slicing (independent, both only need generalized linalg)
        egraph.register(
            rewrite(
                PassSeq.single("Fusion").then(PassSeq.single("Slicing")).then(c)
            ).to(
                PassSeq.single("Slicing").then(PassSeq.single("Fusion")).then(c)
            ),
        )

        # Fusion <-> VTCMTiling (independent)
        egraph.register(
            rewrite(
                PassSeq.single("Fusion").then(PassSeq.single("VTCMTiling")).then(c)
            ).to(
                PassSeq.single("VTCMTiling").then(PassSeq.single("Fusion")).then(c)
            ),
        )

        # Slicing <-> VTCMTiling (independent)
        egraph.register(
            rewrite(
                PassSeq.single("Slicing").then(PassSeq.single("VTCMTiling")).then(c)
            ).to(
                PassSeq.single("VTCMTiling").then(PassSeq.single("Slicing")).then(c)
            ),
        )

        # Slicing <-> Tiling (Slicing doesn't depend on Tiling)
        egraph.register(
            rewrite(
                PassSeq.single("Slicing").then(PassSeq.single("Tiling")).then(c)
            ).to(
                PassSeq.single("Tiling").then(PassSeq.single("Slicing")).then(c)
            ),
        )

        # Run saturation
        egraph.run(20)

        # Check that reordered sequences are equivalent
        alt1 = slicing.then(fusion).then(vtcm).then(tiling).then(hoist)
        alt2 = vtcm.then(fusion).then(slicing).then(tiling).then(hoist)

        try:
            egraph.check(eq(default).to(alt1))
            print("  VERIFIED: Fusion->Slicing->... == Slicing->Fusion->...")
        except Exception:
            print("  Could not verify alt1 equivalence (expected with limited rules)")

        try:
            egraph.check(eq(default).to(alt2))
            print("  VERIFIED: VTCM->Fusion->Slicing->... is equivalent")
        except Exception:
            print("  Could not verify alt2 (may need more saturation rounds)")

    print("  egglog demo complete.\n")


# ============================================================
# Part 2: Pure-Python E-Graph Simulation
# ============================================================

class PassOrderingEGraph:
    """
    E-graph for exploring pass orderings via BFS over adjacent swaps.

    Each e-class represents a set of semantically equivalent
    pass sequences. Rewrite rules encode when two adjacent passes
    can be swapped without changing semantics.
    """

    def __init__(self):
        self.pass_info = {}
        self.commutativity_rules = set()
        self.stats = {
            "rewrites_applied": 0,
            "equivalences_found": 0,
        }

    def add_pass(self, name, deps=None, cost=1.0):
        """Register a pass with its dependencies."""
        self.pass_info[name] = {
            "deps": set(deps or []),
            "cost": cost,
        }

    def can_commute(self, a, b):
        """
        Check if passes a and b can be safely reordered.
        Two passes commute if neither depends on the other
        (directly or transitively).
        """
        if a not in self.pass_info or b not in self.pass_info:
            return False
        a_deps = self._transitive_deps(a)
        b_deps = self._transitive_deps(b)
        return a not in b_deps and b not in a_deps

    def _transitive_deps(self, name, visited=None):
        """Compute transitive closure of dependencies."""
        if visited is None:
            visited = set()
        if name in visited:
            return visited
        visited.add(name)
        for dep in self.pass_info.get(name, {}).get("deps", set()):
            self._transitive_deps(dep, visited)
        return visited

    def discover_commutativity(self):
        """Discover all commutative pass pairs."""
        passes = list(self.pass_info.keys())
        self.commutativity_rules = set()
        for i, a in enumerate(passes):
            for b in passes[i+1:]:
                if self.can_commute(a, b):
                    self.commutativity_rules.add((a, b))
                    self.commutativity_rules.add((b, a))
        return [(a, b) for (a, b) in self.commutativity_rules if a < b]

    def build_equivalence_classes(self, initial_ordering, max_states=50000):
        """
        BFS over adjacent-swap rewrites to discover equivalent orderings.
        Simulates equality saturation with a budget cap for scalability.
        """
        seen = set()
        queue = [tuple(initial_ordering)]
        seen.add(tuple(initial_ordering))

        while queue and len(seen) < max_states:
            current = queue.pop(0)
            for i in range(len(current) - 1):
                a, b = current[i], current[i+1]
                if (a, b) in self.commutativity_rules:
                    new_order = list(current)
                    new_order[i], new_order[i+1] = new_order[i+1], new_order[i]
                    new_tuple = tuple(new_order)
                    if new_tuple not in seen and self._is_valid_ordering(new_order):
                        seen.add(new_tuple)
                        queue.append(new_order)
                        self.stats["rewrites_applied"] += 1
                        if len(seen) >= max_states:
                            break

        self.stats["equivalences_found"] = len(seen)
        self.stats["saturated"] = len(queue) == 0 and len(seen) < max_states
        return seen

    def _is_valid_ordering(self, ordering):
        """Check if an ordering respects all dependencies."""
        position = {name: i for i, name in enumerate(ordering)}
        for name in ordering:
            for dep in self.pass_info.get(name, {}).get("deps", set()):
                if dep in position and position[dep] >= position[name]:
                    return False
        return True

    def extract_optimal(self, orderings, cost_model):
        """Extract the lowest-cost ordering (e-graph extraction phase)."""
        best_ordering = None
        best_cost = float("inf")
        for ordering in orderings:
            cost = cost_model(ordering)
            if cost < best_cost:
                best_cost = cost
                best_ordering = ordering
        return best_ordering, best_cost


def build_hexagon_egraph():
    """Build the e-graph model for the Hexagon pipeline's Phases 2-4."""
    eg = PassOrderingEGraph()

    # Phase 2 passes
    eg.add_pass("MatmulToHexKL", deps=[], cost=1.0)
    eg.add_pass("ConvTiling", deps=[], cost=2.0)
    eg.add_pass("ConvertLayout", deps=[], cost=1.0)
    eg.add_pass("ScheduleMatmulForHVX", deps=[], cost=1.5)
    eg.add_pass("LinalgGeneralize",
                deps=["ScheduleMatmulForHVX", "ConvertLayout"], cost=1.0)
    eg.add_pass("HexagonRVO", deps=["LinalgGeneralize"], cost=0.5)

    # Phase 3 passes
    eg.add_pass("HexagonFusion", deps=["LinalgGeneralize"], cost=3.0)
    eg.add_pass("HexagonSlicing", deps=["LinalgGeneralize"], cost=2.0)
    eg.add_pass("VTCMTiling", deps=["LinalgGeneralize"], cost=2.5)
    eg.add_pass("FormVirtualThreads", deps=["LinalgGeneralize"], cost=1.5)
    eg.add_pass("HexagonTiling",
                deps=["LinalgGeneralize", "HexagonFusion"], cost=3.0)
    eg.add_pass("SmallExponentToMultiply", deps=[], cost=0.5)
    eg.add_pass("HoistScalarOps", deps=["HexagonTiling"], cost=1.0)
    eg.add_pass("LICM", deps=["HoistScalarOps"], cost=1.0)

    # Phase 4 passes
    eg.add_pass("HexagonVectorization",
                deps=["HexagonTiling", "HoistScalarOps", "LICM"], cost=4.0)
    eg.add_pass("AddFastMath", deps=["HexagonVectorization"], cost=0.5)

    return eg


# ============================================================
# Cost Models
# ============================================================

def cost_model_vtcm_first(ordering):
    """Prefer VTCM tiling early (maximize on-chip data reuse)."""
    cost = 0
    for i, name in enumerate(ordering):
        if name == "VTCMTiling":
            cost += i * 2
        elif name == "HexagonFusion":
            cost += i * 1
        elif name == "HexagonTiling":
            cost += i * 0.5
    return cost


def cost_model_fusion_first(ordering):
    """Prefer fusion early (maximize operation fusion)."""
    cost = 0
    for i, name in enumerate(ordering):
        if name == "HexagonFusion":
            cost += i * 3
        elif name == "VTCMTiling":
            cost += i * 0.5
    return cost


def cost_model_balanced(ordering):
    """Balanced cost model considering multiple factors."""
    cost = 0
    for i, name in enumerate(ordering):
        if name == "HexagonFusion":
            cost += i * 1.5
        elif name == "VTCMTiling":
            cost += i * 1.5
        elif name == "HexagonTiling":
            cost += i * 1.0
        elif name == "HoistScalarOps":
            cost += i * 0.5
    return cost


# ============================================================
# Main Experiment
# ============================================================

def run_egraph_experiment():
    """Run the e-graph pass ordering experiment."""
    print("=" * 60)
    print("Part 2: Pass Ordering Equality Saturation")
    print("=" * 60)

    eg = build_hexagon_egraph()

    # Discover commutativity rules
    rules = eg.discover_commutativity()
    print(f"\nCommutative pass pairs discovered: {len(rules)}")
    for a, b in sorted(rules):
        print(f"  {a} <-> {b}")

    # Default ordering (matching LinalgToLLVMPass.cpp)
    default_ordering = [
        "MatmulToHexKL", "ConvTiling", "ConvertLayout",
        "ScheduleMatmulForHVX", "LinalgGeneralize", "HexagonRVO",
        "HexagonFusion", "HexagonSlicing", "VTCMTiling",
        "FormVirtualThreads", "HexagonTiling", "SmallExponentToMultiply",
        "HoistScalarOps", "LICM", "HexagonVectorization", "AddFastMath",
    ]

    print(f"\nDefault ordering ({len(default_ordering)} passes):")
    for i, p in enumerate(default_ordering):
        print(f"  {i+1:2d}. {p}")

    # Run equality saturation (BFS over adjacent swaps)
    print("\nRunning equality saturation...")
    t0 = time.time()
    all_orderings = eg.build_equivalence_classes(default_ordering)
    t1 = time.time()

    print(f"  Time: {t1-t0:.3f}s")
    print(f"  Equivalent orderings found: {len(all_orderings):,}")
    print(f"  Rewrites applied: {eg.stats['rewrites_applied']:,}")

    # Extract optimal under different cost models
    print("\n--- Cost Model Comparison ---")
    cost_models = {
        "VTCM-first": cost_model_vtcm_first,
        "Fusion-first": cost_model_fusion_first,
        "Balanced": cost_model_balanced,
    }

    results = {}
    for name, model in cost_models.items():
        best, cost = eg.extract_optimal(all_orderings, model)
        default_cost = model(default_ordering)
        improvement = ((default_cost - cost) / default_cost * 100
                       if default_cost > 0 else 0)

        print(f"\n  {name} cost model:")
        print(f"    Default ordering cost: {default_cost:.1f}")
        print(f"    Optimal ordering cost: {cost:.1f}")
        print(f"    Improvement: {improvement:.1f}%")

        if best != tuple(default_ordering):
            diffs = []
            for i, (a, b) in enumerate(zip(default_ordering, best)):
                if a != b:
                    diffs.append(f"    pos {i+1}: {a} -> {b}")
            if diffs:
                print("    Differences from default:")
                for d in diffs[:6]:
                    print(d)

        results[name] = {
            "default_cost": default_cost,
            "optimal_cost": cost,
            "improvement_pct": improvement,
            "optimal_ordering": list(best),
        }

    # Position variance analysis
    print("\n--- Equivalence Space Analysis ---")
    position_variance = []
    for i in range(len(default_ordering)):
        unique_at_pos = len(set(o[i] for o in all_orderings))
        position_variance.append(unique_at_pos)
        if unique_at_pos > 1:
            passes_at_pos = sorted(set(o[i] for o in all_orderings))
            print(f"  Position {i+1:2d}: {unique_at_pos} alternatives "
                  f"({', '.join(passes_at_pos)})")

    summary = {
        "total_passes": len(default_ordering),
        "commutative_pairs": len(rules),
        "equivalent_orderings": len(all_orderings),
        "saturation_time_s": round(t1 - t0, 4),
        "rewrites_applied": eg.stats["rewrites_applied"],
        "position_variance": position_variance,
        "cost_model_results": results,
        "commutative_rules": sorted(rules),
    }

    with open("egraph_results.json", "w") as f:
        json.dump(summary, f, indent=2)
    print(f"\nResults saved to egraph_results.json")

    return summary


# ============================================================
# Figure Generation
# ============================================================

def generate_egraph_figures(results, output_dir="figures"):
    """Generate publication figures for the e-graph experiment."""

    # Figure 1: Cost model comparison (grouped bar chart)
    fig, ax = plt.subplots(1, 1, figsize=(5.5, 3.5))

    models = list(results["cost_model_results"].keys())
    default_costs = [results["cost_model_results"][m]["default_cost"]
                     for m in models]
    optimal_costs = [results["cost_model_results"][m]["optimal_cost"]
                     for m in models]

    x = range(len(models))
    width = 0.32
    bars1 = ax.bar([i - width/2 for i in x], default_costs, width,
                   label="Default ordering", color="#d9534f", alpha=0.85)
    bars2 = ax.bar([i + width/2 for i in x], optimal_costs, width,
                   label="E-graph optimal", color="#5bc0de", alpha=0.85)

    ax.set_ylabel("Ordering Cost (lower is better)", fontsize=9)
    ax.set_title("Cost Reduction via E-Graph Extraction", fontsize=10,
                fontweight="bold")
    ax.set_xticks(x)
    ax.set_xticklabels(models, fontsize=8)
    ax.legend(fontsize=8)

    for i, m in enumerate(models):
        imp = results["cost_model_results"][m]["improvement_pct"]
        y = max(default_costs[i], optimal_costs[i])
        ax.text(i, y + 0.8, f"{imp:.0f}%\nbetter",
                ha="center", fontsize=7, color="#2a6496", fontweight="bold")

    plt.tight_layout()
    for ext in ["pdf", "png"]:
        plt.savefig(f"{output_dir}/cost_comparison.{ext}", dpi=300,
                   bbox_inches="tight")
    plt.close()
    print("Saved cost_comparison figure")

    # Figure 2: Position variance
    fig, ax = plt.subplots(1, 1, figsize=(6, 2.2))
    variance = results["position_variance"]
    n = len(variance)
    colors = ["#5cb85c" if v == 1 else "#f0ad4e" if v <= 3 else "#d9534f"
              for v in variance]

    ax.bar(range(n), variance, color=colors, edgecolor="white", linewidth=0.5)
    ax.set_xlabel("Pass Position in Sequence", fontsize=9)
    ax.set_ylabel("# Alternatives", fontsize=9)
    ax.set_title("Per-Position Ordering Flexibility", fontsize=10,
                fontweight="bold")
    ax.set_xticks(range(n))
    ax.set_xticklabels(range(1, n+1), fontsize=7)

    legend_elems = [
        Patch(facecolor="#5cb85c", label="Fixed (1)"),
        Patch(facecolor="#f0ad4e", label="Low (2\u20133)"),
        Patch(facecolor="#d9534f", label="High (4+)"),
    ]
    ax.legend(handles=legend_elems, fontsize=7, loc="upper right")

    plt.tight_layout()
    for ext in ["pdf", "png"]:
        plt.savefig(f"{output_dir}/position_variance.{ext}", dpi=300,
                   bbox_inches="tight")
    plt.close()
    print("Saved position_variance figure")

    # Figure 3: Summary statistics table as figure
    fig, ax = plt.subplots(1, 1, figsize=(5, 2.5))
    ax.axis("off")

    rows = [
        ["Passes in optimization window", str(results["total_passes"])],
        ["Commutative pairs", str(results["commutative_pairs"])],
        ["Equivalent orderings (BFS)", f"{results['equivalent_orderings']:,}"],
        ["Saturation time", f"{results['saturation_time_s']:.3f}s"],
        ["Rewrites applied", f"{results['rewrites_applied']:,}"],
    ]
    for name, cm_results in results["cost_model_results"].items():
        rows.append([
            f"Improvement ({name})",
            f"{cm_results['improvement_pct']:.1f}%",
        ])

    table = ax.table(cellText=rows, colLabels=["Metric", "Value"],
                    loc="center", cellLoc="left")
    table.auto_set_font_size(False)
    table.set_fontsize(8)
    table.scale(1.0, 1.4)

    # Style header
    for j in range(2):
        table[0, j].set_facecolor("#5bc0de")
        table[0, j].set_text_props(fontweight="bold", color="white")

    plt.tight_layout()
    for ext in ["pdf", "png"]:
        plt.savefig(f"{output_dir}/summary_table.{ext}", dpi=300,
                   bbox_inches="tight")
    plt.close()
    print("Saved summary_table figure")


def build_focused_egraph():
    """
    Build a focused e-graph for Phase 3 core passes only.
    These are the passes with the most ordering flexibility.
    """
    eg = PassOrderingEGraph()
    eg.add_pass("HexagonFusion", deps=[], cost=3.0)
    eg.add_pass("HexagonSlicing", deps=[], cost=2.0)
    eg.add_pass("VTCMTiling", deps=[], cost=2.5)
    eg.add_pass("FormVirtualThreads", deps=[], cost=1.5)
    eg.add_pass("SmallExponentToMultiply", deps=[], cost=0.5)
    eg.add_pass("HexagonTiling", deps=["HexagonFusion"], cost=3.0)
    eg.add_pass("HoistScalarOps", deps=["HexagonTiling"], cost=1.0)
    eg.add_pass("LICM", deps=["HoistScalarOps"], cost=1.0)
    return eg


def run_focused_experiment():
    """Run the focused Phase-3 experiment (full saturation feasible)."""
    print("\n" + "=" * 60)
    print("Part 3: Focused Phase-3 Core (Full Saturation)")
    print("=" * 60)

    eg = build_focused_egraph()
    rules = eg.discover_commutativity()
    print(f"\nCommutative pairs: {len(rules)}")
    for a, b in sorted(rules):
        print(f"  {a} <-> {b}")

    default = [
        "HexagonFusion", "HexagonSlicing", "VTCMTiling",
        "FormVirtualThreads", "SmallExponentToMultiply",
        "HexagonTiling", "HoistScalarOps", "LICM",
    ]

    print(f"\nDefault ordering ({len(default)} passes):")
    for i, p in enumerate(default):
        print(f"  {i+1}. {p}")

    t0 = time.time()
    all_orderings = eg.build_equivalence_classes(default, max_states=500000)
    t1 = time.time()

    saturated = eg.stats.get("saturated", False)
    print(f"\n  Time: {t1-t0:.3f}s")
    print(f"  Orderings found: {len(all_orderings):,}")
    print(f"  Fully saturated: {saturated}")
    print(f"  Rewrites applied: {eg.stats['rewrites_applied']:,}")

    cost_models = {
        "VTCM-first": cost_model_vtcm_first,
        "Fusion-first": cost_model_fusion_first,
        "Balanced": cost_model_balanced,
    }

    print("\n--- Cost Model Comparison (Phase 3 Core) ---")
    cm_results = {}
    for name, model in cost_models.items():
        best, cost = eg.extract_optimal(all_orderings, model)
        default_cost = model(default)
        imp = (default_cost - cost) / default_cost * 100 if default_cost > 0 else 0
        print(f"\n  {name}:")
        print(f"    Default cost: {default_cost:.1f}  ->  Optimal: {cost:.1f}  "
              f"({imp:.1f}% better)")
        print(f"    Optimal ordering: {list(best)}")
        cm_results[name] = {
            "default_cost": default_cost,
            "optimal_cost": cost,
            "improvement_pct": imp,
            "optimal_ordering": list(best),
        }

    # Position variance
    position_variance = []
    for i in range(len(default)):
        unique = len(set(o[i] for o in all_orderings))
        position_variance.append(unique)

    focused_results = {
        "total_passes": len(default),
        "commutative_pairs": len(rules),
        "equivalent_orderings": len(all_orderings),
        "saturated": saturated,
        "saturation_time_s": round(t1 - t0, 4),
        "rewrites_applied": eg.stats["rewrites_applied"],
        "position_variance": position_variance,
        "cost_model_results": cm_results,
    }

    with open("egraph_focused_results.json", "w") as f:
        json.dump(focused_results, f, indent=2)
    print(f"\nFocused results saved to egraph_focused_results.json")
    return focused_results


if __name__ == "__main__":
    run_egglog_demo()
    print()
    results = run_egraph_experiment()
    generate_egraph_figures(results)
    focused = run_focused_experiment()
    generate_egraph_figures(focused, output_dir="figures")
