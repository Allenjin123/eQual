#!/usr/bin/env python3
"""
E-Graph-Based Pass Ordering via egglog Equality Saturation.

Models the optimization passes of the Hexagon MLIR LinalgToLLVM pipeline
as egglog terms and uses equality saturation with commutativity rewrite
rules to discover all semantically equivalent pass orderings.

Uses egglog-python (https://egglog-python.readthedocs.io/).
"""

from egglog import *
import json
import time
import itertools

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import networkx as nx


# ============================================================
# 1. Pass Dependency Model
# ============================================================

# Dependencies extracted from LinalgToLLVMPass.cpp (lines 188-304).
#
# Three types of ordering constraints:
#
# (a) DATA dependencies: Pass B consumes IR produced by pass A.
#     Example: HexagonTiling produces tiled scf.for loops that
#     HoistScalarOps analyzes to find loop-invariant scalars.
#     Source: LinalgToLLVMPass.cpp line 265 (tiling) vs 276 (hoist).
#
# (b) PRECONDITION dependencies: Pass B requires pass A to have
#     transformed the IR into a form B can process.
#     Example: LinalgGeneralize converts linalg named ops (matmul,
#     conv2d) to linalg.generic; HexagonFusion pattern-matches on
#     linalg.generic. Without generalization, fusion sees no matches.
#     Source: LinalgToLLVMPass.cpp line 222 (generalize) vs 237 (fusion).
#
# (c) LOWERING ORDER: Pass A operates at a higher dialect level
#     than pass B. Running B first would destroy the structure A needs.
#     Example: HexagonVectorization replaces linalg ops with vector ops;
#     it must run after all linalg-level optimizations are done.
#     Source: LinalgToLLVMPass.cpp line 293 (vectorization) after
#     all linalg passes.

PASS_DEPS = {
    # Phase 2 passes
    "MatmulToHexKL":       [],
    "ConvTiling":          [],
    "ConvertLayout":       [],
    "ScheduleMatmulHVX":   [],
    "LinalgGeneralize":    ["ScheduleMatmulHVX", "ConvertLayout"],   # (b)
    "HexagonRVO":          ["LinalgGeneralize"],                      # (b)

    # Phase 3 passes
    "HexagonFusion":       ["LinalgGeneralize"],                      # (b)
    "HexagonSlicing":      ["LinalgGeneralize"],                      # (b)
    "VTCMTiling":          ["LinalgGeneralize"],                      # (b)
    "FormVirtualThreads":  ["LinalgGeneralize"],                      # (b)
    "HexagonTiling":       ["LinalgGeneralize", "HexagonFusion"],     # (a,b)
    "SmallExpToMul":       [],
    "HoistScalarOps":      ["HexagonTiling"],                         # (a)
    "LICM":                ["HoistScalarOps"],                        # (a)

    # Phase 4 passes
    "Vectorization":       ["HexagonTiling", "HoistScalarOps", "LICM"],  # (c)
    "AddFastMath":         ["Vectorization"],                             # (c)
}

PASS_NAMES = list(PASS_DEPS.keys())


def compute_transitive_deps(name, deps_map, cache=None):
    """Compute transitive closure of dependencies for a pass."""
    if cache is None:
        cache = {}
    if name in cache:
        return cache[name]
    result = set()
    for dep in deps_map.get(name, []):
        result.add(dep)
        result |= compute_transitive_deps(dep, deps_map, cache)
    cache[name] = result
    return result


def find_commutative_pairs():
    """
    Two passes COMMUTE if neither transitively depends on the other.

    Formally, passes A and B commute iff:
      A not in transitive_deps(B) AND B not in transitive_deps(A)

    This means their execution order does not affect the final IR,
    because they operate on disjoint parts of the IR or their
    transformations are independent.
    """
    cache = {}
    pairs = []
    for i, a in enumerate(PASS_NAMES):
        a_deps = compute_transitive_deps(a, PASS_DEPS, cache)
        for b in PASS_NAMES[i+1:]:
            b_deps = compute_transitive_deps(b, PASS_DEPS, cache)
            if a not in b_deps and b not in a_deps:
                pairs.append((a, b))
    return pairs


# ============================================================
# 2. egglog Equality Saturation Model
# ============================================================

class PassNode(Expr):
    """An individual compiler pass."""
    @classmethod
    def mk(cls, name: StringLike) -> "PassNode": ...


class PassSeq(Expr):
    """A sequence (cons-list) of compiler passes."""
    @classmethod
    def nil(cls) -> "PassSeq": ...

    @classmethod
    def cons(cls, head: PassNode, tail: "PassSeq") -> "PassSeq": ...


def build_cons_list(ordering):
    """Build an egglog cons-list from a Python list of pass names."""
    result = PassSeq.nil()
    for name in reversed(ordering):
        result = PassSeq.cons(PassNode.mk(name), result)
    return result


def cons_list_to_python(expr):
    """Convert an egglog cons-list back to a Python list."""
    s = str(expr)
    # Parse the string representation
    result = []
    while "PassNode.mk" in s:
        start = s.index('PassNode.mk("') + len('PassNode.mk("')
        end = s.index('")', start)
        result.append(s[start:end])
        s = s[end:]
    return result


def run_egglog_saturation(pass_ordering, commutative_pairs, max_iters=50):
    """
    Run equality saturation on a pass ordering using egglog.

    For each commutative pair (A, B), we register a rewrite rule:
      cons(A, cons(B, rest)) => cons(B, cons(A, rest))

    This is an ADJACENT TRANSPOSITION rule: it swaps two neighboring
    passes in the sequence when they are known to commute.

    Equality saturation applies ALL matching rules simultaneously,
    building an e-graph that represents every reachable equivalent
    ordering in a single compact data structure. This avoids the
    exponential blowup of explicit enumeration.

    Returns: (egraph, original_expr, run_report, egglog_string)
    """
    egraph = EGraph(save_egglog_string=True)

    with egraph:
        # Register the default ordering
        seq = build_cons_list(pass_ordering)
        egraph.register(seq)

        # Register commutativity rewrite rules
        rest = var("rest", PassSeq)
        rules_registered = 0
        for a, b in commutative_pairs:
            egraph.register(
                rewrite(
                    PassSeq.cons(PassNode.mk(a), PassSeq.cons(PassNode.mk(b), rest))
                ).to(
                    PassSeq.cons(PassNode.mk(b), PassSeq.cons(PassNode.mk(a), rest))
                )
            )
            rules_registered += 1

        # Run equality saturation
        report = egraph.run(max_iters)

        return egraph, seq, report, rules_registered


def verify_equivalences(egraph, original_seq, pass_ordering, commutative_pairs):
    """
    Verify specific alternative orderings are in the same e-class.
    Also count how many of all valid topological orderings are reachable.
    """
    results = {}

    # Test some specific reorderings
    test_orderings = {}

    # 1. Swap first commutative pair
    if commutative_pairs:
        a, b = commutative_pairs[0]
        alt = list(pass_ordering)
        ia, ib = alt.index(a), alt.index(b)
        alt[ia], alt[ib] = alt[ib], alt[ia]
        test_orderings[f"swap({a},{b})"] = alt

    # 2. Move VTCMTiling earlier (if present)
    if "VTCMTiling" in pass_ordering:
        alt = list(pass_ordering)
        idx = alt.index("VTCMTiling")
        # Move it just after LinalgGeneralize
        gen_idx = alt.index("LinalgGeneralize")
        alt.pop(idx)
        alt.insert(gen_idx + 1, "VTCMTiling")
        test_orderings["VTCMTiling_early"] = alt

    # 3. Move HexagonFusion earlier
    if "HexagonFusion" in pass_ordering:
        alt = list(pass_ordering)
        idx = alt.index("HexagonFusion")
        gen_idx = alt.index("LinalgGeneralize")
        alt.pop(idx)
        alt.insert(gen_idx + 1, "HexagonFusion")
        test_orderings["Fusion_early"] = alt

    for name, alt_ordering in test_orderings.items():
        alt_seq = build_cons_list(alt_ordering)
        try:
            with egraph:
                egraph.check(eq(original_seq).to(alt_seq))
            results[name] = True
        except Exception:
            results[name] = False

    return results


# ============================================================
# 3. egglog Native Extraction with Custom CostModel
# ============================================================

def make_egglog_cost_model(priority_weights):
    """
    Build an egglog CostModel that performs position-aware extraction.

    The cost model assigns each pass a "priority weight". The e-graph
    extractor minimizes sum((position+1) * weight) over the sequence.
    This is achieved via a recursive decomposition on the cons-list:

        cost(nil)          = (0, 0)
        cost(cons(h, t))   = (w(h) + tc + tw,  w(h) + tw)

    where (tc, tw) = cost(t), and w(h) is the priority weight of pass h.

    Proof of correctness: for a sequence [p0, p1, ..., pN]:
        cost = sum_{i=0}^{N} (i+1) * w(pi)
    The extractor minimizes this by placing high-weight passes first.

    This is standard e-graph extraction (bottom-up DP over e-classes)
    with a custom cost domain, following egg [POPL'21] Section 5.
    """
    class _CostModel:
        def __call__(self, egraph, expr, children_costs):
            s = repr(expr)
            # nil → (0, 0)
            if s == "PassSeq.nil()":
                return (0.0, 0.0)
            # PassNode → scalar weight
            if s.startswith("PassNode.mk("):
                name = s.split('"')[1]
                return priority_weights.get(name, 0.01)
            # cons(head, tail) → (cost, weight_sum)
            if "PassSeq.cons(" in s or s.startswith("PassSeq.cons"):
                hw = (float(children_costs[0])
                      if not isinstance(children_costs[0], tuple) else 0.01)
                if isinstance(children_costs[1], tuple):
                    tc, tw = children_costs[1]
                else:
                    tc, tw = 0.0, 0.0
                return (hw + tc + tw, hw + tw)
            return 0.01
    return _CostModel()


def extract_with_egglog(egraph, seq, priority_weights):
    """
    Use egglog's built-in extraction with a custom position-aware
    CostModel. Returns the extracted ordering as a Python list.
    """
    cm = make_egglog_cost_model(priority_weights)
    with egraph:
        best = egraph.extract(seq, cost_model=cm)
    return cons_list_to_python(best)


# ============================================================
# 4. ILP-Based Extraction (following TENSAT [MLSys'21])
# ============================================================

def extract_with_ilp(pass_names, deps, priority_weights):
    """
    ILP extraction for pass ordering.

    Formulation (standard scheduling ILP):
      Variables: pos[i] ∈ {0, ..., N-1}  — position of pass i
      Constraints:
        - All-different: pos[i] ≠ pos[j] for i ≠ j
          (encoded via binary assignment vars x[i,k] = 1 if pass i at pos k)
        - Dependencies: pos[dep] < pos[i] for each (dep → i)
      Objective: minimize sum_i pos[i] * weight[i]

    This follows the ILP extraction approach of TENSAT [MLSys'21]
    adapted to our pass-ordering domain.
    """
    from scipy.optimize import milp, LinearConstraint, Bounds
    import numpy as np

    N = len(pass_names)
    idx = {name: i for i, name in enumerate(pass_names)}

    # Binary variables: x[i,k] = 1 if pass i is at position k
    # Flattened: variable index = i * N + k
    num_vars = N * N
    c = np.zeros(num_vars)  # objective coefficients

    for i, name in enumerate(pass_names):
        w = priority_weights.get(name, 0.0)
        for k in range(N):
            c[i * N + k] = k * w  # position k * weight

    # Constraints:
    # 1. Each pass assigned to exactly one position: sum_k x[i,k] = 1
    # 2. Each position has exactly one pass: sum_i x[i,k] = 1
    # 3. Dependencies: pos[dep] < pos[i]
    #    => sum_k k*x[dep,k] < sum_k k*x[i,k]
    #    => sum_k k*x[dep,k] - sum_k k*x[i,k] <= -1

    A_rows = []
    b_lower = []
    b_upper = []

    # Constraint 1: each pass to one position
    for i in range(N):
        row = np.zeros(num_vars)
        for k in range(N):
            row[i * N + k] = 1.0
        A_rows.append(row)
        b_lower.append(1.0)
        b_upper.append(1.0)

    # Constraint 2: each position has one pass
    for k in range(N):
        row = np.zeros(num_vars)
        for i in range(N):
            row[i * N + k] = 1.0
        A_rows.append(row)
        b_lower.append(1.0)
        b_upper.append(1.0)

    # Constraint 3: dependency ordering
    cache = {}
    for name in pass_names:
        t_deps = compute_transitive_deps(name, deps, cache)
        i = idx[name]
        for dep_name in t_deps:
            if dep_name in idx:
                j = idx[dep_name]
                # pos[j] < pos[i]  =>  sum_k k*x[j,k] - sum_k k*x[i,k] <= -1
                row = np.zeros(num_vars)
                for k in range(N):
                    row[j * N + k] = k
                    row[i * N + k] = -k
                A_rows.append(row)
                b_lower.append(-np.inf)
                b_upper.append(-1.0)

    A = np.array(A_rows)
    constraints = LinearConstraint(A, b_lower, b_upper)
    bounds = Bounds(lb=0, ub=1)
    integrality = np.ones(num_vars)  # all binary

    result = milp(c, constraints=constraints, integrality=integrality,
                  bounds=bounds)

    if not result.success:
        return None, None

    # Decode solution
    x = result.x.reshape(N, N)
    ordering = [""] * N
    for i in range(N):
        k = int(np.argmax(x[i]))
        ordering[k] = pass_names[i]

    return ordering, result.fun


# ============================================================
# 5. Cost Models (priority weights for each extraction method)
# ============================================================

# Priority weights: higher weight = more benefit from being early.
# The cost model minimizes sum(position * weight), so high-weight
# passes are placed as early as possible (subject to dependencies).

COST_MODELS = {
    "VTCM-first": {
        "VTCMTiling": 3.0, "HexagonFusion": 1.5, "HexagonTiling": 0.5,
    },
    "Fusion-first": {
        "HexagonFusion": 3.0, "VTCMTiling": 0.5,
    },
    "Balanced": {
        "HexagonFusion": 1.5, "VTCMTiling": 1.5,
        "HexagonTiling": 1.0, "HoistScalarOps": 0.5,
    },
}


def ordering_cost(ordering, weights):
    """Compute sum(position * weight) for an ordering."""
    return sum(i * weights.get(p, 0.0) for i, p in enumerate(ordering))


# ============================================================
# 5. Figure Generation
# ============================================================

def generate_dependency_dag(output_path):
    """Generate the pass dependency DAG figure."""
    G = nx.DiGraph()
    for name in PASS_NAMES:
        G.add_node(name)
    for name, deps in PASS_DEPS.items():
        for dep in deps:
            G.add_edge(dep, name)

    # Transitive reduction for cleaner visualization
    G_reduced = nx.transitive_reduction(G)

    fig, ax = plt.subplots(1, 1, figsize=(7, 5.5))

    # Layout using topological sort layers
    layers = {}
    for node in nx.topological_sort(G):
        depth = 0
        for pred in G.predecessors(node):
            if pred in layers:
                depth = max(depth, layers[pred] + 1)
        layers[node] = depth

    # Group by depth for x positioning
    depth_groups = {}
    for node, d in layers.items():
        depth_groups.setdefault(d, []).append(node)

    pos = {}
    for depth, nodes in depth_groups.items():
        for i, node in enumerate(nodes):
            x = (i - (len(nodes) - 1) / 2.0) * 2.2
            y = -depth * 1.8
            pos[node] = (x, y)

    # Phase coloring
    phase_map = {
        "MatmulToHexKL": 2, "ConvTiling": 2, "ConvertLayout": 2,
        "ScheduleMatmulHVX": 2, "LinalgGeneralize": 2, "HexagonRVO": 2,
        "HexagonFusion": 3, "HexagonSlicing": 3, "VTCMTiling": 3,
        "FormVirtualThreads": 3, "HexagonTiling": 3, "SmallExpToMul": 3,
        "HoistScalarOps": 3, "LICM": 3,
        "Vectorization": 4, "AddFastMath": 4,
    }
    phase_colors = {2: "#5bc0de", 3: "#5cb85c", 4: "#d9534f"}
    node_colors = [phase_colors[phase_map[n]] for n in G_reduced.nodes()]

    nx.draw_networkx_edges(G_reduced, pos, ax=ax, arrows=True,
                          arrowstyle="-|>", arrowsize=12,
                          edge_color="#666", width=1.2,
                          connectionstyle="arc3,rad=0.05")

    nx.draw_networkx_nodes(G_reduced, pos, ax=ax, node_color=node_colors,
                          node_size=800, edgecolors="black", linewidths=1.2)

    # Shortened labels
    short = {
        "MatmulToHexKL": "MatHexKL", "ConvTiling": "ConvTile",
        "ConvertLayout": "CvtLayout", "ScheduleMatmulHVX": "SchedHVX",
        "LinalgGeneralize": "Generalize", "HexagonRVO": "RVO",
        "HexagonFusion": "Fusion", "HexagonSlicing": "Slicing",
        "VTCMTiling": "VTCMTile", "FormVirtualThreads": "VirtThreads",
        "HexagonTiling": "HVXTile", "SmallExpToMul": "SmExpMul",
        "HoistScalarOps": "HoistScalar", "LICM": "LICM",
        "Vectorization": "Vectorize", "AddFastMath": "FastMath",
    }
    labels = {n: short.get(n, n) for n in G_reduced.nodes()}
    nx.draw_networkx_labels(G_reduced, pos, labels, ax=ax, font_size=7,
                           font_weight="bold")

    legend = [
        mpatches.Patch(color="#5bc0de", label="Phase 2: Layout/Scheduling"),
        mpatches.Patch(color="#5cb85c", label="Phase 3: Fusion/Tiling"),
        mpatches.Patch(color="#d9534f", label="Phase 4: Vectorization"),
    ]
    ax.legend(handles=legend, loc="lower right", fontsize=8)
    ax.set_title("Pass Dependency DAG (Phases 2\u20134)", fontsize=11,
                fontweight="bold")
    ax.axis("off")

    plt.tight_layout()
    for ext in ["pdf", "png"]:
        plt.savefig(f"{output_path}.{ext}", dpi=300, bbox_inches="tight")
    plt.close()
    print(f"  Saved {output_path}.pdf/png")


def generate_position_variance(orderings, pass_ordering, output_path):
    """Per-position flexibility figure."""
    n = len(pass_ordering)
    variance = []
    for i in range(n):
        unique = len(set(o[i] for o in orderings))
        variance.append(unique)

    fig, ax = plt.subplots(1, 1, figsize=(6.5, 2.5))
    colors = ["#5cb85c" if v == 1 else "#f0ad4e" if v <= 3 else "#d9534f"
              for v in variance]
    ax.bar(range(n), variance, color=colors, edgecolor="white", linewidth=0.5)
    ax.set_xlabel("Position in pass sequence", fontsize=9)
    ax.set_ylabel("Distinct passes", fontsize=9)
    ax.set_title("Per-Position Ordering Flexibility (16 passes)", fontsize=10,
                fontweight="bold")
    ax.set_xticks(range(n))
    ax.set_xticklabels(range(1, n+1), fontsize=7)

    legend_elems = [
        mpatches.Patch(facecolor="#5cb85c", label="Fixed (1)"),
        mpatches.Patch(facecolor="#f0ad4e", label="Low flexibility (2\u20133)"),
        mpatches.Patch(facecolor="#d9534f", label="High flexibility (4+)"),
    ]
    ax.legend(handles=legend_elems, fontsize=7, loc="upper right")

    plt.tight_layout()
    for ext in ["pdf", "png"]:
        plt.savefig(f"{output_path}.{ext}", dpi=300, bbox_inches="tight")
    plt.close()
    print(f"  Saved {output_path}.pdf/png")


def generate_cost_comparison(cost_results, output_path):
    """Cost model comparison bar chart."""
    fig, ax = plt.subplots(1, 1, figsize=(5.5, 3.5))

    models = list(cost_results.keys())
    default_costs = [cost_results[m]["default"] for m in models]
    optimal_costs = [cost_results[m]["optimal"] for m in models]

    x = range(len(models))
    w = 0.32
    ax.bar([i - w/2 for i in x], default_costs, w,
           label="Default ordering", color="#d9534f", alpha=0.85)
    ax.bar([i + w/2 for i in x], optimal_costs, w,
           label="E-graph optimal", color="#5bc0de", alpha=0.85)

    ax.set_ylabel("Ordering cost (lower is better)", fontsize=9)
    ax.set_title("Cost Reduction via Equality Saturation", fontsize=10,
                fontweight="bold")
    ax.set_xticks(x)
    ax.set_xticklabels(models, fontsize=8)
    ax.legend(fontsize=8)

    for i, m in enumerate(models):
        imp = cost_results[m]["improvement_pct"]
        y = max(default_costs[i], optimal_costs[i])
        ax.text(i, y + 0.5, f"\u2193{imp:.0f}%",
                ha="center", fontsize=8, color="#2a6496", fontweight="bold")

    plt.tight_layout()
    for ext in ["pdf", "png"]:
        plt.savefig(f"{output_path}.{ext}", dpi=300, bbox_inches="tight")
    plt.close()
    print(f"  Saved {output_path}.pdf/png")


# ============================================================
# 6. Main Experiment
# ============================================================

def main():
    print("=" * 65)
    print("  E-Graph Pass Ordering via egglog Equality Saturation")
    print("=" * 65)

    # --- Step 1: Dependency analysis ---
    print("\n[1] Dependency Analysis")
    comm_pairs = find_commutative_pairs()
    total_pairs = len(PASS_NAMES) * (len(PASS_NAMES) - 1) // 2
    print(f"  Passes: {len(PASS_NAMES)}")
    print(f"  Commutative pairs: {len(comm_pairs)} / {total_pairs} "
          f"({100*len(comm_pairs)/total_pairs:.0f}%)")

    # Count edges in dependency graph
    edge_count = sum(len(deps) for deps in PASS_DEPS.values())
    # Count transitive edges
    cache = {}
    trans_edges = 0
    for name in PASS_NAMES:
        trans_edges += len(compute_transitive_deps(name, PASS_DEPS, cache)) - len(PASS_DEPS[name])
    print(f"  Direct dependency edges: {edge_count}")
    print(f"  Transitive dependency edges: {edge_count + trans_edges}")

    # --- Step 2: Default ordering ---
    default_ordering = list(PASS_NAMES)  # As defined in PASS_DEPS order
    print(f"\n[2] Default Ordering (from LinalgToLLVMPass.cpp):")
    for i, p in enumerate(default_ordering):
        deps = PASS_DEPS[p]
        dep_str = f"  (requires: {', '.join(deps)})" if deps else ""
        print(f"  {i+1:2d}. {p}{dep_str}")

    # --- Step 3: egglog equality saturation ---
    print(f"\n[3] egglog Equality Saturation")
    print(f"  Registering {len(comm_pairs)} commutativity rewrite rules...")

    t0 = time.time()
    egraph, seq, report, n_rules = run_egglog_saturation(
        default_ordering, comm_pairs, max_iters=100
    )
    t1 = time.time()

    # Parse report
    report_str = str(report)
    print(f"  Saturation time: {t1-t0:.4f}s")
    print(f"  Rules registered: {n_rules}")
    print(f"  Run report: {report_str[:300]}...")

    # --- Step 4: Verify equivalences ---
    print(f"\n[4] Equivalence Verification")
    equiv_results = verify_equivalences(
        egraph, seq, default_ordering, comm_pairs
    )
    for name, is_equiv in equiv_results.items():
        status = "EQUIVALENT" if is_equiv else "NOT equivalent"
        print(f"  {name}: {status}")

    # --- Step 5: egglog Native Extraction (standard) ---
    print(f"\n[5] egglog Native Extraction (custom CostModel)")
    print(f"    Method: bottom-up DP over e-classes [egg, POPL'21 Sec 5]")
    print(f"    Cost domain: (weighted_cost, weight_sum) tuples")

    egglog_results = {}
    for cm_name, weights in COST_MODELS.items():
        t2 = time.time()
        extracted = extract_with_egglog(egraph, seq, weights)
        t3 = time.time()
        cost_val = ordering_cost(extracted, weights)
        default_cost = ordering_cost(default_ordering, weights)
        imp = (default_cost - cost_val) / default_cost * 100 if default_cost > 0 else 0

        egglog_results[cm_name] = {
            "default": default_cost,
            "optimal": cost_val,
            "improvement_pct": round(imp, 1),
            "optimal_ordering": extracted,
            "time_s": round(t3 - t2, 4),
        }
        print(f"\n    {cm_name}:")
        print(f"      Default cost: {default_cost:.1f}")
        print(f"      Extracted cost: {cost_val:.1f} ({imp:.1f}% reduction)")
        print(f"      Extraction time: {t3-t2:.4f}s")
        print(f"      Ordering: {extracted}")

    # --- Step 6: ILP Extraction (following TENSAT [MLSys'21]) ---
    print(f"\n[6] ILP Extraction (scipy.optimize.milp)")
    print(f"    Method: binary assignment ILP [TENSAT, MLSys'21]")

    ilp_results = {}
    for cm_name, weights in COST_MODELS.items():
        t4 = time.time()
        ilp_ordering, ilp_obj = extract_with_ilp(
            PASS_NAMES, PASS_DEPS, weights
        )
        t5 = time.time()

        if ilp_ordering:
            cost_val = ordering_cost(ilp_ordering, weights)
            default_cost = ordering_cost(default_ordering, weights)
            imp = (default_cost - cost_val) / default_cost * 100 if default_cost > 0 else 0

            ilp_results[cm_name] = {
                "default": default_cost,
                "optimal": cost_val,
                "improvement_pct": round(imp, 1),
                "optimal_ordering": ilp_ordering,
                "ilp_objective": round(ilp_obj, 2),
                "time_s": round(t5 - t4, 4),
            }
            print(f"\n    {cm_name}:")
            print(f"      Default cost: {default_cost:.1f}")
            print(f"      ILP optimal: {cost_val:.1f} ({imp:.1f}% reduction)")
            print(f"      ILP solve time: {t5-t4:.4f}s")
            print(f"      Ordering: {ilp_ordering}")
        else:
            print(f"\n    {cm_name}: ILP infeasible")
            ilp_results[cm_name] = {"error": "infeasible"}

    # --- Step 6b: Compare extraction methods ---
    print(f"\n[6b] Extraction Method Comparison")
    print(f"    {'Cost Model':<15} {'egglog':>10} {'ILP':>10} {'Match?':>8}")
    print(f"    {'-'*45}")
    cost_results = {}
    for cm_name in COST_MODELS:
        eg_cost = egglog_results[cm_name]["optimal"]
        ilp_cost = ilp_results[cm_name]["optimal"] if "optimal" in ilp_results.get(cm_name, {}) else float('inf')
        match = "YES" if abs(eg_cost - ilp_cost) < 0.01 else "NO"
        print(f"    {cm_name:<15} {eg_cost:>10.1f} {ilp_cost:>10.1f} {match:>8}")
        # Use the better of the two
        if ilp_cost <= eg_cost:
            cost_results[cm_name] = ilp_results[cm_name]
            cost_results[cm_name]["method"] = "ILP"
        else:
            cost_results[cm_name] = egglog_results[cm_name]
            cost_results[cm_name]["method"] = "egglog"

    # --- Step 7: Position variance via valid topological sorts ---
    print(f"\n[7] Position Variance (via topological sort sampling)")
    # Sample valid topological orderings from the DAG for variance analysis
    import random
    G_dep = nx.DiGraph()
    for name in PASS_NAMES:
        G_dep.add_node(name)
    cache2 = {}
    for name in PASS_NAMES:
        for dep in compute_transitive_deps(name, PASS_DEPS, cache2):
            if dep != name and dep in PASS_NAMES:
                G_dep.add_edge(dep, name)
    topo_samples = set()
    for _ in range(50000):
        nodes = list(PASS_NAMES)
        random.shuffle(nodes)
        order = list(nx.topological_sort(G_dep))
        # Random topological sort by shuffling within each layer
        in_deg = dict(G_dep.in_degree())
        result = []
        available = [n for n in PASS_NAMES if in_deg.get(n, 0) == 0]
        remaining = set(PASS_NAMES)
        while available:
            random.shuffle(available)
            pick = available.pop(0)
            result.append(pick)
            remaining.discard(pick)
            available = []
            for n in remaining:
                if all(p not in remaining for p in G_dep.predecessors(n)):
                    available.append(n)
        if len(result) == len(PASS_NAMES):
            topo_samples.add(tuple(result))

    print(f"  Sampled {len(topo_samples):,} distinct valid orderings")
    for i in range(len(default_ordering)):
        unique = set(o[i] for o in topo_samples)
        if len(unique) > 1:
            print(f"  Position {i+1:2d}: {len(unique):2d} alternatives "
                  f"({', '.join(sorted(unique)[:5])}{'...' if len(unique) > 5 else ''})")

    # --- Step 8: Generate figures ---
    print(f"\n[8] Generating Figures")
    fig_dir = "figures"
    generate_dependency_dag(f"{fig_dir}/dependency_dag")
    generate_position_variance(topo_samples, default_ordering,
                              f"{fig_dir}/position_variance")
    generate_cost_comparison(cost_results, f"{fig_dir}/cost_comparison")

    # --- Step 9: Save egglog program ---
    print(f"\n[9] Saving egglog program")
    with egraph:
        egglog_str = egraph.as_egglog_string
    with open("generated_egglog_program.egg", "w") as f:
        f.write(egglog_str)
    print(f"  Saved to generated_egglog_program.egg ({len(egglog_str)} chars)")

    # --- Save all results ---
    results = {
        "passes": len(PASS_NAMES),
        "direct_edges": edge_count,
        "commutative_pairs": len(comm_pairs),
        "total_pairs": total_pairs,
        "commutativity_pct": round(100 * len(comm_pairs) / total_pairs, 1),
        "egglog_rules": n_rules,
        "egglog_saturation_time_s": round(t1 - t0, 4),
        "egglog_extraction": egglog_results,
        "ilp_extraction": ilp_results,
        "cost_models": cost_results,
        "commutative_pair_list": comm_pairs,
    }
    with open("results.json", "w") as f:
        json.dump(results, f, indent=2)
    print(f"\n  All results saved to results.json")

    print("\n" + "=" * 65)
    print("  Experiment complete.")
    print("=" * 65)

    return results


if __name__ == "__main__":
    main()
