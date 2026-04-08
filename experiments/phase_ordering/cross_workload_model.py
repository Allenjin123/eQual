#!/usr/bin/env python3
"""
Cross-Workload Pairwise Cost Model.

Leave-one-kernel-out cross-validation: trains pairwise pass-ordering
preferences on 8 kernels and predicts the best ordering for the held-out
kernel.  Two complementary approaches are implemented:

  1. Pooled pairwise model:  Aggregate point-biserial correlations across
     training kernels, use them to score the 51 orderings for the test kernel.
  2. Feature-weighted pairwise model:  Weight each training kernel's
     contribution by its static-feature similarity to the test kernel.

Usage:
    python cross_workload_model.py
"""

import json
import math
import os
import random
import sys
from collections import defaultdict
from itertools import combinations
from pathlib import Path

import numpy as np
from scipy import stats

# ── paths ────────────────────────────────────────────────────────────────
BASE_DIR = Path(__file__).resolve().parent
RESULTS_PATH = BASE_DIR / "hw_eval" / "extended_experiments" / "all_results.json"
FEATURES_PATH = BASE_DIR / "pairwise_analysis" / "static_features.json"
OUTPUT_DIR = BASE_DIR / "pairwise_analysis"
OUTPUT_PATH = OUTPUT_DIR / "cross_workload_results.json"

# ── imports from the main experiment script ──────────────────────────────
sys.path.insert(0, str(BASE_DIR))
from run_paper_experiments import (
    EXTENDED_PASSES, PASS_DEPS, DEFAULT_EXTENDED_ORDER,
    random_valid_ordering,
)

# Build transitive closure of pass deps once
import networkx as nx
_DEP_GRAPH = nx.DiGraph()
_DEP_GRAPH.add_edges_from(PASS_DEPS)
_TC = nx.transitive_closure(_DEP_GRAPH)

COMMUTATIVE_PAIRS = []
for a, b in combinations(sorted(EXTENDED_PASSES), 2):
    if not _TC.has_edge(a, b) and not _TC.has_edge(b, a):
        COMMUTATIVE_PAIRS.append((a, b))


# =====================================================================
# Data loading
# =====================================================================

def load_results():
    """Load (ordering, pcycles) entries per kernel from all_results.json."""
    with open(RESULTS_PATH) as f:
        raw = json.load(f)

    kernels = {}
    for _arch, arch_data in raw.items():
        for kname, kdata in arch_data.items():
            entries = []
            for oname, odata in kdata.items():
                if odata.get("status") == "ok" and odata.get("pcycles"):
                    entries.append({
                        "name": oname,
                        "ordering": odata["ordering"],
                        "pcycles": odata["pcycles"],
                    })
            if entries:
                kernels[kname] = entries
    return kernels


def load_static_features():
    """Load static MLIR features.  Synthesise features for generated
    variants that do not have a file in static_features.json."""
    with open(FEATURES_PATH) as f:
        feats = json.load(f)

    # Generated variants: derive approximate features from the generation
    # spec.  All are bandwidth-bound elementwise f32 ops.
    variant_specs = {
        "mul_2d_kernel":  {"rows": 63,  "cols": 16384, "n_generics": 1, "category": "bandwidth_bound"},
        "sub_2d_kernel":  {"rows": 63,  "cols": 16384, "n_generics": 1, "category": "bandwidth_bound"},
        "max_2d_kernel":  {"rows": 63,  "cols": 16384, "n_generics": 1, "category": "bandwidth_bound"},
        "add_relu_kernel": {"rows": 63, "cols": 16384, "n_generics": 2, "category": "bandwidth_bound"},
        "add_mul_kernel":  {"rows": 63, "cols": 16384, "n_generics": 2, "category": "bandwidth_bound"},
        "add_small_kernel": {"rows": 16, "cols": 4096,  "n_generics": 1, "category": "bandwidth_bound"},
        "add_large_kernel": {"rows": 128,"cols": 16384, "n_generics": 1, "category": "bandwidth_bound"},
    }

    for kname, spec in variant_specs.items():
        if kname not in feats:
            total_elems = spec["rows"] * spec["cols"]
            feats[kname] = {
                "total_ops": 10 + spec["n_generics"],
                "total_dialects": 5,
                "linalg_ops": spec["n_generics"] + 1,  # generics + yield
                "tensor_ops": 0,
                "arith_ops": 2,
                "scf_ops": 0,
                "math_ops": 0,
                "memref_ops": 5,
                "bufferization_ops": 3,
                "vector_ops": 0,
                "linalg_generic": spec["n_generics"],
                "linalg_matmul": 0,
                "linalg_fill": 0,
                "linalg_reduce": 0,
                "linalg_conv": 0,
                "linalg_transpose": 0,
                "n_tensors": 7,
                "total_tensor_elements": total_elems * 7,
                "max_tensor_dim": max(spec["rows"], spec["cols"]),
                "min_tensor_dim": min(spec["rows"], spec["cols"]),
                "mean_tensor_rank": 2.0,
                "max_tensor_rank": 2,
                "max_tensor_elements": total_elems,
                "uses_f16": 0,
                "uses_f32": 1,
                "uses_i32": 0,
                "compute_ops": spec["n_generics"],
                "memory_ops": 8,
                "compute_memory_ratio": spec["n_generics"] / 8.0,
                "is_single_op": 1 if spec["n_generics"] <= 1 else 0,
                "is_matmul": 0,
                "is_conv": 0,
                "has_reduction": 0,
                "has_transpose": 0,
                "has_scf_loop": 0,
                "has_math_transcendental": 0,
                "n_functions": 1,
                "n_lines": 18 + (spec["n_generics"] - 1) * 6,
                "max_nesting_depth": 2,
                "workload_category": spec["category"],
            }
    return feats


# =====================================================================
# Pairwise correlation helpers
# =====================================================================

def _indicators_for_pair(entries, a, b):
    """Return (indicator_array, pcycles_array) for pair (a, b).
    indicator = 1 if a before b."""
    inds = []
    cycs = []
    for e in entries:
        ordering = e["ordering"]
        if a in ordering and b in ordering:
            inds.append(1 if ordering.index(a) < ordering.index(b) else 0)
            cycs.append(e["pcycles"])
    return np.array(inds), np.array(cycs)


def compute_pairwise_correlations(entries):
    """Point-biserial r for every commutative pair in *one* kernel's entries."""
    pcycles = np.array([e["pcycles"] for e in entries])
    results = {}
    for a, b in COMMUTATIVE_PAIRS:
        indicators = []
        for e in entries:
            o = e["ordering"]
            pa = o.index(a) if a in o else -1
            pb = o.index(b) if b in o else -1
            if pa >= 0 and pb >= 0:
                indicators.append(1 if pa < pb else 0)
            else:
                indicators.append(0)
        ind = np.array(indicators)
        if ind.std() > 0 and pcycles.std() > 0:
            r, p = stats.pointbiserialr(ind, pcycles)
            results[(a, b)] = {"r": float(r), "p": float(p), "n": len(entries)}
    return results


def pooled_pairwise_correlations(kernel_entries_dict, exclude_kernel=None):
    """Pool orderings from multiple kernels and compute aggregate pairwise r.

    We normalise Pcycles per kernel to z-scores first so that absolute cycle
    counts (which vary by orders of magnitude across workloads) do not skew
    the correlation.
    """
    # Build a combined pool with z-scored pcycles
    pool = []
    for kname, entries in kernel_entries_dict.items():
        if kname == exclude_kernel:
            continue
        cyc = np.array([e["pcycles"] for e in entries], dtype=float)
        mu, sigma = cyc.mean(), cyc.std()
        if sigma < 1e-10:
            sigma = 1.0
        for e, c in zip(entries, cyc):
            pool.append({
                "ordering": e["ordering"],
                "pcycles_z": (c - mu) / sigma,
            })

    pcycles_z = np.array([e["pcycles_z"] for e in pool])
    results = {}
    for a, b in COMMUTATIVE_PAIRS:
        indicators = []
        for e in pool:
            o = e["ordering"]
            pa = o.index(a) if a in o else -1
            pb = o.index(b) if b in o else -1
            if pa >= 0 and pb >= 0:
                indicators.append(1 if pa < pb else 0)
            else:
                indicators.append(0)
        ind = np.array(indicators)
        if ind.std() > 0 and pcycles_z.std() > 0:
            r, p = stats.pointbiserialr(ind, pcycles_z)
            results[(a, b)] = {"r": float(r), "p": float(p), "n": len(pool)}
    return results


def feature_weighted_pairwise(kernel_entries, static_features, target_kernel):
    """Weight each training kernel's pairwise correlations by
    feature-space similarity to the target kernel, then aggregate."""
    target_feat = _feature_vector(static_features[target_kernel])

    # Compute per-kernel correlations and weight by cosine similarity
    weighted_r = defaultdict(lambda: {"sum_wr": 0.0, "sum_w": 0.0})
    for kname, entries in kernel_entries.items():
        if kname == target_kernel:
            continue
        if kname not in static_features:
            continue
        kfeat = _feature_vector(static_features[kname])
        sim = _cosine_sim(target_feat, kfeat)
        w = max(sim, 0.0)  # only positive similarities

        corrs = compute_pairwise_correlations(entries)
        for pair, info in corrs.items():
            weighted_r[pair]["sum_wr"] += w * info["r"]
            weighted_r[pair]["sum_w"] += w

    results = {}
    for pair, agg in weighted_r.items():
        if agg["sum_w"] > 0:
            results[pair] = {"r": agg["sum_wr"] / agg["sum_w"], "p": 0.0, "n": 0}
    return results


_FEATURE_KEYS = [
    "total_ops", "linalg_ops", "tensor_ops", "arith_ops", "scf_ops",
    "math_ops", "memref_ops", "bufferization_ops", "linalg_generic",
    "linalg_matmul", "linalg_fill", "linalg_reduce", "linalg_conv",
    "linalg_transpose", "n_tensors", "total_tensor_elements",
    "max_tensor_dim", "min_tensor_dim", "max_tensor_elements",
    "compute_ops", "memory_ops", "compute_memory_ratio",
    "is_single_op", "is_matmul", "is_conv", "has_reduction",
    "has_transpose", "has_scf_loop", "has_math_transcendental",
    "n_functions", "n_lines", "max_nesting_depth",
]

def _feature_vector(feat_dict):
    return np.array([float(feat_dict.get(k, 0)) for k in _FEATURE_KEYS])

def _cosine_sim(a, b):
    na, nb = np.linalg.norm(a), np.linalg.norm(b)
    if na < 1e-12 or nb < 1e-12:
        return 0.0
    return float(np.dot(a, b) / (na * nb))


# =====================================================================
# Ordering scoring / ranking
# =====================================================================

def pairwise_cost(ordering, pairwise_r):
    """Sum of r * indicator(A before B).  Lower = better."""
    pos = {p: i for i, p in enumerate(ordering)}
    cost = 0.0
    for (a, b), info in pairwise_r.items():
        r = info["r"]
        if a in pos and b in pos:
            if pos[a] < pos[b]:
                cost += r
            else:
                cost -= r
    return cost


def rank_orderings(entries, pairwise_r):
    """Score and sort all measured orderings by pairwise cost (ascending)."""
    scored = []
    for e in entries:
        c = pairwise_cost(e["ordering"], pairwise_r)
        scored.append({**e, "pairwise_cost": c})
    scored.sort(key=lambda x: x["pairwise_cost"])
    return scored


# =====================================================================
# SA extraction (from per-kernel model, kept for comparison)
# =====================================================================

def sa_extract(pairwise_r, seed=42, max_iter=40000):
    """Lightweight SA to find the ordering that minimises pairwise cost."""
    rng = random.Random(seed)
    current = random_valid_ordering(EXTENDED_PASSES, PASS_DEPS, rng)
    current_cost = pairwise_cost(current, pairwise_r)
    best, best_cost = current[:], current_cost
    T = 5.0
    for it in range(max_iter):
        idx = rng.randint(0, len(current) - 2)
        cand = list(current)
        cand[idx], cand[idx + 1] = cand[idx + 1], cand[idx]
        # check validity
        pos = {p: i for i, p in enumerate(cand)}
        valid = all(pos.get(a, -1) < pos.get(b, len(cand)) for a, b in PASS_DEPS
                     if a in pos and b in pos)
        if valid:
            nc = pairwise_cost(cand, pairwise_r)
            delta = nc - current_cost
            if delta < 0 or rng.random() < math.exp(-delta / max(T, 1e-10)):
                current, current_cost = cand, nc
                if nc < best_cost:
                    best, best_cost = cand[:], nc
        T *= 0.9997
        T = max(T, 0.001)
    return best, best_cost


# =====================================================================
# Majority vote baseline
# =====================================================================

def majority_vote_ordering(kernel_entries, exclude_kernel):
    """For each commutative pair, pick the direction preferred by the majority
    of training kernels (by sign of correlation).  Return a dict of pair->r
    where r is +1 or -1 depending on majority direction."""
    votes = defaultdict(list)
    for kname, entries in kernel_entries.items():
        if kname == exclude_kernel:
            continue
        corrs = compute_pairwise_correlations(entries)
        for pair, info in corrs.items():
            votes[pair].append(np.sign(info["r"]))
    results = {}
    for pair, v in votes.items():
        avg = np.mean(v)
        results[pair] = {"r": avg, "p": 0.0, "n": 0}
    return results


# =====================================================================
# Leave-one-kernel-out evaluation
# =====================================================================

def leave_one_out_eval(kernels, static_features):
    """For each kernel K, train on the other 8, predict ordering for K."""
    results = {}
    kernel_names = sorted(kernels.keys())

    for target in kernel_names:
        target_entries = kernels[target]
        target_sorted = sorted(target_entries, key=lambda x: x["pcycles"])
        actual_best = target_sorted[0]
        actual_worst = target_sorted[-1]
        default_entry = next((e for e in target_entries if e["name"] == "default"), None)

        # ── Model 1: pooled pairwise (z-normalised) ──
        pooled_r = pooled_pairwise_correlations(kernels, exclude_kernel=target)
        pooled_ranked = rank_orderings(target_entries, pooled_r)
        pooled_pick = pooled_ranked[0]

        # ── Model 2: feature-weighted pairwise ──
        fw_r = feature_weighted_pairwise(kernels, static_features, target)
        fw_ranked = rank_orderings(target_entries, fw_r)
        fw_pick = fw_ranked[0]

        # ── Model 3: majority vote ──
        mv_r = majority_vote_ordering(kernels, target)
        mv_ranked = rank_orderings(target_entries, mv_r)
        mv_pick = mv_ranked[0]

        # ── Model 4: SA extraction from pooled model ──
        sa_ordering, sa_cost = sa_extract(pooled_r, seed=42)
        # find closest measured ordering
        sa_pos = {p: i for i, p in enumerate(sa_ordering)}
        best_match, best_dis = None, float("inf")
        for e in target_entries:
            ep = {p: i for i, p in enumerate(e["ordering"])}
            dis = sum(1 for a2, b2 in COMMUTATIVE_PAIRS
                      if a2 in sa_pos and b2 in sa_pos and a2 in ep and b2 in ep
                      and (sa_pos[a2] < sa_pos[b2]) != (ep[a2] < ep[b2]))
            if dis < best_dis:
                best_dis = dis
                best_match = e
        sa_pick = best_match

        # ── Per-kernel oracle (train on same kernel) ──
        oracle_r = compute_pairwise_correlations(target_entries)
        oracle_ranked = rank_orderings(target_entries, oracle_r)
        oracle_pick = oracle_ranked[0]

        # ── Collect metrics ──
        def _pct(pick):
            return (pick["pcycles"] - actual_best["pcycles"]) / actual_best["pcycles"] * 100

        def _rank(pick):
            return next(i for i, e in enumerate(target_sorted) if e["name"] == pick["name"]) + 1

        n = len(target_entries)
        entry = {
            "n_orderings": n,
            "actual_best": {"name": actual_best["name"], "pcycles": actual_best["pcycles"]},
            "actual_worst": {"name": actual_worst["name"], "pcycles": actual_worst["pcycles"]},
            "default": {
                "pcycles": default_entry["pcycles"],
                "vs_best_pct": _pct(default_entry),
                "rank": _rank(default_entry),
            } if default_entry else None,
            "pooled_pairwise": {
                "pick": pooled_pick["name"],
                "pcycles": pooled_pick["pcycles"],
                "vs_best_pct": _pct(pooled_pick),
                "rank": _rank(pooled_pick),
            },
            "feature_weighted": {
                "pick": fw_pick["name"],
                "pcycles": fw_pick["pcycles"],
                "vs_best_pct": _pct(fw_pick),
                "rank": _rank(fw_pick),
            },
            "majority_vote": {
                "pick": mv_pick["name"],
                "pcycles": mv_pick["pcycles"],
                "vs_best_pct": _pct(mv_pick),
                "rank": _rank(mv_pick),
            },
            "pooled_sa": {
                "pick": sa_pick["name"],
                "pcycles": sa_pick["pcycles"],
                "vs_best_pct": _pct(sa_pick),
                "rank": _rank(sa_pick),
                "sa_cost": sa_cost,
            },
            "per_kernel_oracle": {
                "pick": oracle_pick["name"],
                "pcycles": oracle_pick["pcycles"],
                "vs_best_pct": _pct(oracle_pick),
                "rank": _rank(oracle_pick),
            },
        }

        # Kendall tau: pooled cost vs actual pcycles on target
        pooled_costs = [pairwise_cost(e["ordering"], pooled_r) for e in target_entries]
        actual_cyc = [e["pcycles"] for e in target_entries]
        tau, tau_p = stats.kendalltau(pooled_costs, actual_cyc)
        entry["pooled_kendall_tau"] = float(tau)
        entry["pooled_kendall_p"] = float(tau_p)

        results[target] = entry

    return results


# =====================================================================
# Printing
# =====================================================================

def print_summary(results):
    """Pretty-print leave-one-out results."""
    print("=" * 100)
    print("  CROSS-WORKLOAD COST MODEL  --  Leave-One-Kernel-Out Evaluation")
    print("=" * 100)

    # Per-kernel detail
    for kname in sorted(results.keys()):
        r = results[kname]
        print(f"\n{'─' * 100}")
        print(f"  TARGET KERNEL: {kname}  ({r['n_orderings']} orderings)")
        print(f"{'─' * 100}")
        print(f"  Actual best:  {r['actual_best']['name']} = {r['actual_best']['pcycles']:>12,} Pcycles")
        if r["default"]:
            print(f"  Default:      {'default':20s} = {r['default']['pcycles']:>12,} Pcycles  "
                  f"(rank {r['default']['rank']}/{r['n_orderings']}, +{r['default']['vs_best_pct']:.3f}%)")
        print(f"  Actual worst: {r['actual_worst']['name']} = {r['actual_worst']['pcycles']:>12,} Pcycles")
        spread = (r["actual_worst"]["pcycles"] - r["actual_best"]["pcycles"]) / r["actual_best"]["pcycles"] * 100
        print(f"  Spread (worst-best): {spread:.3f}%")
        print(f"  Pooled Kendall tau: {r['pooled_kendall_tau']:.3f} (p={r['pooled_kendall_p']:.4f})")

        print(f"\n  {'Model':<24} {'Pick':>12} {'Pcycles':>12} {'Rank':>8} {'vs Best':>10}")
        print(f"  {'─'*68}")
        for model_key, label in [
            ("pooled_pairwise", "Pooled pairwise"),
            ("feature_weighted", "Feature-weighted"),
            ("majority_vote", "Majority vote"),
            ("pooled_sa", "Pooled + SA"),
            ("name_transfer", "Name transfer"),
            ("per_kernel_oracle", "Per-kernel oracle"),
        ]:
            m = r.get(model_key)
            if m is None:
                continue
            print(f"  {label:<24} {m['pick']:>12} {m['pcycles']:>12,} "
                  f"{m['rank']:>4}/{r['n_orderings']:<3} {m['vs_best_pct']:>+9.3f}%")
        if r["default"]:
            d = r["default"]
            print(f"  {'Default':<24} {'default':>12} {d['pcycles']:>12,} "
                  f"{d['rank']:>4}/{r['n_orderings']:<3} {d['vs_best_pct']:>+9.3f}%")

    # Summary table
    print(f"\n\n{'=' * 100}")
    print("  SUMMARY TABLE")
    print(f"{'=' * 100}")
    print(f"  {'Kernel':<20} {'Default':>10} {'Pooled':>10} {'FeatWt':>10} "
          f"{'MajVote':>10} {'NameXfer':>10} {'Pool+SA':>10} {'Oracle':>10}  (vs-best %)")
    print(f"  {'─'*92}")

    agg = defaultdict(list)
    for kname in sorted(results.keys()):
        r = results[kname]
        def_pct = f"{r['default']['vs_best_pct']:+.3f}" if r["default"] else "N/A"
        pp = f"{r['pooled_pairwise']['vs_best_pct']:+.3f}"
        fw = f"{r['feature_weighted']['vs_best_pct']:+.3f}"
        mv = f"{r['majority_vote']['vs_best_pct']:+.3f}"
        nt = f"{r['name_transfer']['vs_best_pct']:+.3f}" if r.get("name_transfer") else "N/A"
        sa = f"{r['pooled_sa']['vs_best_pct']:+.3f}"
        oc = f"{r['per_kernel_oracle']['vs_best_pct']:+.3f}"
        print(f"  {kname:<20} {def_pct:>10} {pp:>10} {fw:>10} {mv:>10} {nt:>10} {sa:>10} {oc:>10}")

        if r["default"]:
            agg["default"].append(r["default"]["vs_best_pct"])
        agg["pooled"].append(r["pooled_pairwise"]["vs_best_pct"])
        agg["feat_wt"].append(r["feature_weighted"]["vs_best_pct"])
        agg["maj_vote"].append(r["majority_vote"]["vs_best_pct"])
        if r.get("name_transfer"):
            agg["name_xfer"].append(r["name_transfer"]["vs_best_pct"])
        agg["pool_sa"].append(r["pooled_sa"]["vs_best_pct"])
        agg["oracle"].append(r["per_kernel_oracle"]["vs_best_pct"])

    print(f"  {'─'*92}")
    def _avg(lst):
        return f"{np.mean(lst):+.3f}" if lst else "N/A"
    print(f"  {'MEAN':<20} {_avg(agg['default']):>10} {_avg(agg['pooled']):>10} "
          f"{_avg(agg['feat_wt']):>10} {_avg(agg['maj_vote']):>10} "
          f"{_avg(agg.get('name_xfer',[])):>10} {_avg(agg['pool_sa']):>10} {_avg(agg['oracle']):>10}")

    # Beats-default count
    print(f"\n  Beats default?")
    for model_key, label in [("pooled_pairwise", "Pooled"), ("feature_weighted", "FeatWt"),
                              ("majority_vote", "MajVote"), ("name_transfer", "NameXfer"),
                              ("pooled_sa", "Pool+SA"), ("per_kernel_oracle", "Oracle")]:
        wins = 0
        ties = 0
        losses = 0
        for kname, r in results.items():
            if r["default"] is None:
                continue
            if model_key not in r or r[model_key] is None:
                continue
            m_cyc = r[model_key]["pcycles"]
            d_cyc = r["default"]["pcycles"]
            if m_cyc < d_cyc:
                wins += 1
            elif m_cyc == d_cyc:
                ties += 1
            else:
                losses += 1
        total = wins + ties + losses
        print(f"    {label:<14}: {wins} wins, {ties} ties, {losses} losses  (out of {total})")

    # Kendall tau summary
    print(f"\n  Pooled Kendall tau per kernel (correlation of predicted vs actual ranking):")
    for kname in sorted(results.keys()):
        r = results[kname]
        sig = "***" if r["pooled_kendall_p"] < 0.001 else "**" if r["pooled_kendall_p"] < 0.01 else "*" if r["pooled_kendall_p"] < 0.05 else ""
        print(f"    {kname:<20}  tau = {r['pooled_kendall_tau']:+.3f}  (p={r['pooled_kendall_p']:.4f}) {sig}")


# =====================================================================
# Diagnostics: pairwise correlation agreement across kernels
# =====================================================================

def diagnose_transferability(kernels):
    """Analyse whether pairwise correlations are consistent across kernels.

    This is the key diagnostic: if different kernels disagree on which
    direction of a pass pair is faster, pooled correlations will cancel out
    and the cross-workload model will fail.
    """
    print(f"\n\n{'=' * 100}")
    print("  TRANSFERABILITY DIAGNOSTICS")
    print(f"{'=' * 100}")

    # Compute per-kernel correlations
    per_kernel = {}
    for kname, entries in kernels.items():
        per_kernel[kname] = compute_pairwise_correlations(entries)

    kernel_names = sorted(kernels.keys())

    # 1. Cross-kernel correlation agreement: for each pair, do kernels agree
    #    on the sign of r?
    pair_signs = defaultdict(list)  # pair -> list of (kname, sign_of_r)
    for kname in kernel_names:
        for pair, info in per_kernel[kname].items():
            pair_signs[pair].append((kname, np.sign(info["r"]), info["r"], info["p"]))

    # Find pairs where ALL kernels agree on direction
    unanimous = []
    conflicting = []
    for pair, signs in pair_signs.items():
        if len(signs) < 5:
            continue
        sign_vals = [s[1] for s in signs]
        if all(s > 0 for s in sign_vals) or all(s < 0 for s in sign_vals):
            avg_r = np.mean([s[2] for s in signs])
            unanimous.append((pair, avg_r, len(signs)))
        else:
            pos = sum(1 for s in sign_vals if s > 0)
            neg = sum(1 for s in sign_vals if s < 0)
            conflicting.append((pair, pos, neg, signs))

    print(f"\n  Pairs with data from 5+ kernels: {len([p for p, s in pair_signs.items() if len(s) >= 5])}")
    print(f"  Unanimous direction (all agree):  {len(unanimous)}")
    print(f"  Conflicting direction:            {len(conflicting)}")

    if unanimous:
        unanimous.sort(key=lambda x: abs(x[1]), reverse=True)
        print(f"\n  Top unanimous pairs (transferable):")
        print(f"    {'Pass A':<22} {'Pass B':<22} {'Avg r':>8} {'N kernels':>10}")
        for (a, b), avg_r, n in unanimous[:15]:
            direction = f"{a} first" if avg_r < 0 else f"{b} first"
            print(f"    {a:<22} {b:<22} {avg_r:>+.4f} {n:>10}  -> {direction}")

    # 2. Per-kernel top effects: which pairs matter most for each kernel?
    print(f"\n  Top 5 effects per kernel (|r| > 0.1):")
    for kname in kernel_names:
        sig_pairs = [(p, i) for p, i in per_kernel[kname].items() if abs(i["r"]) > 0.1]
        sig_pairs.sort(key=lambda x: abs(x[1]["r"]), reverse=True)
        print(f"\n    {kname}:")
        for (a, b), info in sig_pairs[:5]:
            print(f"      {a:<22} {b:<22} r={info['r']:>+.3f}  p={info['p']:.3f}")
        if not sig_pairs:
            print(f"      (no pairs with |r| > 0.1)")

    # 3. Cross-kernel tau matrix: how well do per-kernel models predict
    #    other kernels?
    print(f"\n  Cross-kernel Kendall tau matrix:")
    print(f"  (row = model trained on, column = evaluated on)")
    header = f"  {'Train on':<18}" + "".join(f"{k[:10]:>12}" for k in kernel_names)
    print(header)
    print(f"  {'─'*(18 + 12*len(kernel_names))}")
    for train_k in kernel_names:
        row = f"  {train_k[:18]:<18}"
        for test_k in kernel_names:
            test_entries = kernels[test_k]
            train_corrs = per_kernel[train_k]
            costs = [pairwise_cost(e["ordering"], train_corrs) for e in test_entries]
            cycs = [e["pcycles"] for e in test_entries]
            tau, _ = stats.kendalltau(costs, cycs)
            row += f"{tau:>+12.3f}"
        print(row)

    # 4. Ordering-name transfer: do the same ordering names perform well
    #    across kernels?
    print(f"\n  Ordering-name transfer analysis:")
    print(f"  (For each ordering name, show its rank across all kernels)")
    ordering_names = set()
    for entries in kernels.values():
        for e in entries:
            ordering_names.add(e["name"])

    # For each ordering, compute mean percentile across kernels
    ord_perf = {}
    for oname in sorted(ordering_names):
        percentiles = []
        for kname in kernel_names:
            entries_sorted = sorted(kernels[kname], key=lambda x: x["pcycles"])
            for rank_i, e in enumerate(entries_sorted):
                if e["name"] == oname:
                    percentiles.append(rank_i / (len(entries_sorted) - 1) * 100)
                    break
        if percentiles:
            ord_perf[oname] = {
                "mean_pctl": np.mean(percentiles),
                "std_pctl": np.std(percentiles),
                "min_pctl": np.min(percentiles),
                "max_pctl": np.max(percentiles),
                "n": len(percentiles),
                "pctls": percentiles,
            }

    # Sort by mean percentile (lower = better)
    best_ords = sorted(ord_perf.items(), key=lambda x: x[1]["mean_pctl"])
    print(f"\n  Best orderings by mean percentile rank across all kernels:")
    print(f"    {'Ordering':<14} {'Mean %ile':>10} {'Std':>8} {'Min':>8} {'Max':>8}  Ranks")
    print(f"    {'─'*70}")
    for oname, perf in best_ords[:10]:
        ranks_str = ", ".join(f"{p:.0f}" for p in perf["pctls"])
        print(f"    {oname:<14} {perf['mean_pctl']:>10.1f} {perf['std_pctl']:>8.1f} "
              f"{perf['min_pctl']:>8.1f} {perf['max_pctl']:>8.1f}  [{ranks_str}]")
    print(f"  ...")
    for oname, perf in best_ords[-5:]:
        ranks_str = ", ".join(f"{p:.0f}" for p in perf["pctls"])
        print(f"    {oname:<14} {perf['mean_pctl']:>10.1f} {perf['std_pctl']:>8.1f} "
              f"{perf['min_pctl']:>8.1f} {perf['max_pctl']:>8.1f}  [{ranks_str}]")

    return {
        "n_unanimous_pairs": len(unanimous),
        "n_conflicting_pairs": len(conflicting),
        "top_unanimous": [(list(p), float(r), int(n)) for p, r, n in unanimous[:15]],
        "best_ordering_by_mean_rank": best_ords[0][0] if best_ords else None,
        "ordering_name_performance": {k: {kk: vv for kk, vv in v.items() if kk != "pctls"}
                                       for k, v in ord_perf.items()},
    }


# =====================================================================
# Ordering-name transfer model (baseline)
# =====================================================================

def ordering_name_transfer(kernels, target_kernel):
    """Pick the ordering name that has the best average rank across
    training kernels.  This exploits the fact that all kernels use
    the same 51 ordering names (same permutations)."""
    ordering_avg_rank = defaultdict(list)
    for kname, entries in kernels.items():
        if kname == target_kernel:
            continue
        sorted_entries = sorted(entries, key=lambda x: x["pcycles"])
        for rank_i, e in enumerate(sorted_entries):
            ordering_avg_rank[e["name"]].append(rank_i)

    # Pick the name with the best (lowest) average rank
    best_name = min(ordering_avg_rank, key=lambda n: np.mean(ordering_avg_rank[n]))
    return best_name


# =====================================================================
# Main
# =====================================================================

def main():
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    print("Loading data...")
    kernels = load_results()
    static_features = load_static_features()
    print(f"  Loaded {len(kernels)} kernels: {', '.join(sorted(kernels.keys()))}")
    print(f"  Static features for: {', '.join(sorted(static_features.keys()))}")

    print("\nRunning leave-one-kernel-out evaluation...\n")
    results = leave_one_out_eval(kernels, static_features)

    # Add ordering-name transfer results
    print(f"\n  Adding ordering-name transfer baseline...")
    for target in sorted(kernels.keys()):
        best_name = ordering_name_transfer(kernels, target)
        target_entries = kernels[target]
        target_sorted = sorted(target_entries, key=lambda x: x["pcycles"])
        actual_best = target_sorted[0]
        pick_entry = next(e for e in target_entries if e["name"] == best_name)
        rank = next(i for i, e in enumerate(target_sorted) if e["name"] == best_name) + 1
        vs_best = (pick_entry["pcycles"] - actual_best["pcycles"]) / actual_best["pcycles"] * 100
        results[target]["name_transfer"] = {
            "pick": best_name,
            "pcycles": pick_entry["pcycles"],
            "vs_best_pct": vs_best,
            "rank": rank,
        }

    print_summary(results)

    # Diagnostics
    diag = diagnose_transferability(kernels)

    # Serialise and save
    serialisable = dict(results)
    serialisable["_diagnostics"] = {
        "n_unanimous_pairs": diag["n_unanimous_pairs"],
        "n_conflicting_pairs": diag["n_conflicting_pairs"],
        "best_ordering_by_mean_rank": diag["best_ordering_by_mean_rank"],
    }

    with open(OUTPUT_PATH, "w") as f:
        json.dump(serialisable, f, indent=2)
    print(f"\n  Results saved to: {OUTPUT_PATH}")


if __name__ == "__main__":
    main()
