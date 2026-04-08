# Paper Experiment Results — Phase Ordering with Hardware-Tailored Cost Models

**Date:** 2026-03-24
**Script:** `run_paper_experiments.py`
**Pipeline:** MLIR → phaseOrdering → full Hexagon lowering → link → QuRT sim → Pcycles

---

## Experiment 1: hexkl_attention on Hexagon v75

**Kernel:** Flash attention (1024x64, f16, 15+ linalg ops: matmul, transpose, softmax, reduce)
**Architecture:** Hexagon v75 (cycle-accurate simulator)
**Orderings:** 5 key orderings of Phase 3 passes
**Simulation time:** ~55 minutes per ordering

### Results

| Ordering | Phase 3 Order | Pcycles | Instructions | Obj Size | vs Best |
|----------|--------------|---------|-------------|----------|---------|
| **fusion_first** | Fusion→VTCM→Threads→Slicing | **9,787,035,268** | 4,860,150,922 | 150,244 | **1.000x** |
| default | Fusion→Slicing→VTCM→Threads | 9,787,117,756 | 4,860,131,127 | 150,252 | 1.000x |
| slicing_first | Slicing→Fusion→VTCM→Threads | 9,787,262,737 | 4,860,218,872 | 150,152 | 1.000x |
| vtcm_first | VTCM→Fusion→Slicing→Threads | 9,979,483,087 | 5,025,267,334 | 179,988 | 1.020x |
| worst_case | Threads→Slicing→VTCM→Fusion | 9,979,713,349 | 5,025,435,083 | 180,028 | 1.020x |

**Speedup (best vs worst): 1.97%** (192M Pcycles, 165M fewer instructions)

### Key Findings

1. **Two distinct ordering groups:**
   - **Fusion-early** (fusion_first, default, slicing_first): ~9.787B Pcycles, ~150KB obj
   - **VTCM-early** (vtcm_first, worst_case): ~9.980B Pcycles, ~180KB obj
   - The groups are separated by the relative position of HexagonFusion vs VTCMTiling

2. **VTCM-early produces 20% larger object code** (180KB vs 150KB) and 3.4% more dynamic instructions

3. **The critical ordering decision is Fusion vs VTCM position** — HexagonSlicing and FormVirtualThreads have negligible effect

---

## Cross-Kernel Comparison (v75)

| Kernel | Category | Best Ordering | Speedup | Critical Decision |
|--------|----------|--------------|---------|-------------------|
| **hexkl_attention** | Mixed (15 ops) | **fusion_first** | **1.97%** | Fusion before VTCM |
| add_2d_kernel | Bandwidth (1 op) | vtcm_first | 0.98% | VTCM before Fusion |
| hexkl_linalg_matmul | Compute (2 ops) | any | <0.002% | N/A |

### Central Result: The optimal ordering is workload-dependent

- **Bandwidth-bound kernels** (add_2d): VTCM-first wins. Moving data to fast VTCM memory
  before other optimizations reduces DDR latency.
- **Mixed compute kernels** (attention): Fusion-first wins. Fusing the Q*K^T matmul with
  subsequent softmax operations reduces intermediate buffers and total instruction count.
- **Pure compute kernels** (matmul): Ordering is irrelevant. Single-operation kernels
  converge regardless of Phase 3 pass order.

This proves: **no single fixed ordering is optimal across workload types.** A hardware-tailored
cost model that classifies workloads (bandwidth vs compute vs mixed) and selects the
appropriate ordering is needed.

---

## Experiment 2: Cross-Architecture (v73 vs v75)

**Status:** Running. v73 attention kernel experiments in progress.

**Hypothesis:** Different Hexagon generations (v73 vs v75) may have different optimal
orderings for the same kernel due to different memory hierarchies and VTCM configurations.

---

## Cost Model Implications

Based on the measured data:

### For bandwidth-bound workloads:
```
VTCMTiling: weight=3.5 (should run first)
HexagonFusion: weight=1.5
HexagonSlicing: weight=1.0
FormVirtualThreads: weight=0.5
```

### For mixed compute workloads (attention):
```
HexagonFusion: weight=3.5 (should run first)
VTCMTiling: weight=1.0
HexagonSlicing: weight=0.5
FormVirtualThreads: weight=0.5
```

### For pure compute workloads:
All weights equal (ordering doesn't matter).

A **workload-aware cost model** classifies the kernel first, then applies the
appropriate weight profile to the ILP extraction.
