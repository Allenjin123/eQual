# End-to-End Pass Ordering Validation Results

**Date:** 2026-03-23
**Backend:** Hexagon MLIR (Triton), rebuilt with `phaseOrdering` option
**Environment:** LLVM commit `064f02dac0c`, Hexagon Tools v19.0.07, SDK 6.5.0.0

## Summary

We compiled real MLIR kernels through the production Hexagon backend with 5 different
Phase 3 pass orderings determined by the e-graph + ILP framework. Results demonstrate
that **pass ordering produces measurably different generated code**, with fusion-first
orderings generating tighter code than VTCM-first orderings.

## Orderings Evaluated

| Name | Phase 3 Order | Cost Model |
|------|--------------|------------|
| default | Fusion → Slicing → VTCM → Threads | Original pipeline |
| hw-calibrated | Fusion → VTCM → Slicing → Threads | ILP, hw-calibrated weights |
| fusion-first | Fusion → VTCM → Threads → Slicing | ILP, fusion-prioritized |
| vtcm-first | VTCM → Fusion → Threads → Slicing | ILP, VTCM-prioritized |
| worst-case | Threads → Slicing → VTCM → Fusion | Reverse of hw-calibrated |

## Results: add_2d_kernel (Elementwise Add, 63×16384 f32)

### LLVM IR Kernel Function Metrics

| Metric | Fusion-first group | VTCM-first group | Delta |
|--------|-------------------|-------------------|-------|
| Basic blocks | 4 | 10 | +150% |
| LLVM instructions | 125 | 146 | +17% |
| Branches | 10 | 16 | +60% |
| Function calls | 10 | 6 | −40% |
| Lines of IR | 140 | 173 | +24% |

Fusion-first group: `default`, `hw-calibrated`, `fusion-first` (kernel code identical)
VTCM-first group: `vtcm-first`, `worst-case` (kernel code identical)

### Hexagon ISA-Level Metrics

| Metric | Fusion-first | VTCM-first | Delta |
|--------|-------------|------------|-------|
| Total Hexagon instructions | 183 | 219 | +20% |
| HVX vector instructions | 35 | 35 | 0% |
| Object file size | 91,860 B | 91,908 B | +0.05% |

**Key finding:** Same HVX vector computation, but VTCM-first orderings introduce
20% more scalar/control-flow overhead.

### Interpretation

When VTCM tiling runs before fusion:
1. VTCM tiling introduces buffer management structures (VTCM allocation, DMA setup)
2. Fusion then operates on already-tiled IR, limiting its optimization scope
3. Result: more basic blocks (2.5×), more branches, more instructions

When fusion runs first:
1. Fusion merges operations into a single fused body
2. VTCM tiling then operates on the fused result, producing cleaner code
3. Result: simpler control flow, fewer instructions

This confirms the e-graph framework's prediction that fusion-first orderings are
preferable for this kernel class.

## Results: hexkl_linalg_matmul (Matmul, 1024×64 × 64×512, f16→f32)

### LLVM IR Kernel Function Metrics

| Metric | All orderings |
|--------|--------------|
| Basic blocks | 7 |
| LLVM instructions | 289 |
| Vector ops | 112 |
| Shufflevectors | 16 |
| Object file size | 93,080–93,108 B |

**Finding:** The matmul kernel function is **identical** across all 5 orderings.
The Phase 3 reorderable passes (fusion, slicing, VTCM tiling) have no observable
interaction for this kernel because:
- The single `linalg.matmul` operation offers no fusion opportunities
- The tiling/slicing decisions are invariant to ordering

**Note:** Object files still differ slightly (93,080 vs 93,108 bytes), indicating
differences in runtime initialization code rather than the kernel itself.

## What This Proves

1. **The phaseOrdering mechanism works end-to-end.** Code changes in
   `LinalgToLLVMPass.cpp` correctly reorder Phase 3 passes, and the effect
   propagates through the full compilation pipeline.

2. **Pass ordering affects real code quality.** For the elementwise kernel,
   ordering determines whether the compiler generates 4 or 10 basic blocks—a
   2.5× difference in control flow complexity and 20% difference in instruction count.

3. **Fusion-first orderings produce tighter code.** The e-graph framework's
   identification of fusion as high-priority is validated by the generated code
   structure.

4. **Effect is kernel-dependent.** Simple matmul with one operation shows no
   ordering effect. Multi-operation kernels (elementwise with fusion opportunities)
   show significant differences.

## Files

- `add_2d_kernel/*.o` — Compiled objects (5 orderings)
- `add_2d_kernel/*.ll` — LLVM IR (5 orderings)
- `hexkl_linalg_matmul/*.o` — Compiled objects (5 orderings)
- `hexkl_linalg_matmul/*.ll` — LLVM IR (5 orderings)
- `ir_analysis.json` — Full static analysis data
- `e2e_results.json` — Ordering metadata

## Limitations

- **No cycle-count measurements.** The compiled objects include Hexagon runtime
  code that depends on QuRT, making standalone simulator execution non-trivial.
  Cycle counts would require a QuRT simulation harness.
- **Only 2 kernels tested.** A broader kernel suite would strengthen the results.
- **Phase 3 window is only 4 passes.** The effect is bounded by the
  reorderable set; a larger window would show more variation.
