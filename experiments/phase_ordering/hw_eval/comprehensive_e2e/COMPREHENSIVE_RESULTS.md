# Comprehensive E2E Phase Ordering Results

**Date:** 2026-03-23
**Simulator:** hexagon-sim v75 (cycle-accurate, deterministic)
**Pipeline:** MLIR input → phaseOrdering → full Hexagon lowering → link .so → QuRT sim

## Results Summary

### add_2d_kernel — Elementwise f32 Add (63×16384, bandwidth-bound)

| Ordering | Phase 3 Order | Pcycles | vs Best |
|----------|--------------|---------|---------|
| **vtcm_first** | VTCM→Fusion→Slicing→Threads | **526,401,358** | **1.000x** |
| worst_case | Threads→Slicing→VTCM→Fusion | 526,475,641 | 1.000x |
| slicing_first | Slicing→Fusion→VTCM→Threads | 531,496,075 | 1.010x |
| fusion_first | Fusion→VTCM→Threads→Slicing | 531,543,988 | 1.010x |
| default | Fusion→Slicing→VTCM→Threads | 531,578,410 | 1.010x |

**Speedup: 0.98%** (5.2M Pcycles saved, ~5.3M fewer dynamic instructions)

### hexkl_linalg_matmul — Matmul f16→f32 (1024×64 × 64×512, compute-bound)

| Ordering | Phase 3 Order | Pcycles | vs Best |
|----------|--------------|---------|---------|
| default | Fusion→Slicing→VTCM→Threads | 2,434,863,397 | 1.000x |
| vtcm_first | VTCM→Fusion→Slicing→Threads | 2,434,873,039 | 1.000x |
| worst_case | Threads→Slicing→VTCM→Fusion | 2,434,887,049 | 1.000x |
| slicing_first | Slicing→Fusion→VTCM→Threads | 2,434,900,453 | 1.000x |
| fusion_first | Fusion→VTCM→Threads→Slicing | 2,434,908,304 | 1.000x |

**Speedup: <0.002%** (44K Pcycles variation across 2.43B total — noise)

### conv_tiling — Conv2D NHWC f16 (1×16×32×128, filter 224×1×1×128)

Running. Single simulation takes >60 minutes due to convolution complexity.
First ordering in progress.

## Key Findings

### 1. Pass ordering sensitivity is workload-dependent
- **Bandwidth-bound elementwise**: 0.98% effect (significant for NPU at scale)
- **Compute-bound matmul**: No measurable effect (<0.002%)
- This validates the need for automated frameworks: engineers cannot predict
  which workloads benefit without end-to-end measurement.

### 2. VTCM-first orderings win for bandwidth-bound workloads
- VTCM tiling before fusion moves data to fast VTCM memory earlier
- This reduces DDR access latency during the compute phase
- The effect is consistent across orderings: all VTCM-early orderings cluster
  at ~526.4M Pcycles, all fusion-early cluster at ~531.5M Pcycles

### 3. Static analysis predicts the wrong direction
- Static analysis: fusion-first produces fewer Hexagon instructions (183 vs 219)
- Dynamic reality: VTCM-first executes fewer total instructions (385M vs 390M)
- The loop structure that VTCM-first produces, while statically larger, is
  dynamically more efficient due to VTCM locality

### 4. Two distinct ordering groups emerge
- **Group A (VTCM-early):** vtcm_first, worst_case → ~526.4M Pcycles
- **Group B (Fusion-early):** default, fusion_first, slicing_first → ~531.5M Pcycles
- The critical decision is whether VTCMTiling runs before or after HexagonFusion
- HexagonSlicing and FormVirtualThreads have negligible impact on this kernel

## Cost Model Implications

The measured data suggests these pass priority weights for bandwidth-bound kernels:

| Pass | Current Weight | Suggested Weight | Rationale |
|------|---------------|-----------------|-----------|
| VTCMTiling | 2.0 | **3.5** | Should run first for bandwidth-bound |
| HexagonFusion | 3.0 | **1.5** | Less critical when VTCM handles locality |
| HexagonSlicing | 1.5 | 1.0 | Negligible measured effect |
| FormVirtualThreads | 0.0 | 0.0 | No effect (single-threaded) |

For compute-bound kernels, all weights should be equal (ordering doesn't matter).
A workload-aware cost model should classify kernels as bandwidth-bound vs
compute-bound before applying weights.
