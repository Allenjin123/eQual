/*
 * bench_ordering.c - Measures the effect of PASS ORDERING on code quality.
 *
 * This is the key experiment: it shows that the ORDER in which MLIR passes
 * run produces structurally different code with measurably different
 * performance on Hexagon v73.
 *
 * Scenario: 5-operation elementwise chain (add → scale → bias → relu → clamp)
 * representing a common DNN activation/normalization pipeline.
 *
 * IMPORTANT: In real MLIR lowering, each unfused linalg.generic op produces
 * its own output tensor/memref. Adjacent ops are only fused if the fusion
 * pass explicitly merges them. We model this by using separate intermediate
 * buffers between operations — this prevents hexagon-clang from auto-fusing
 * and faithfully represents the actual MLIR code structure.
 *
 * Three pass orderings:
 *
 * 1. "E-graph optimal" (fusion-first): HexagonFusion merges all 5 ops into
 *    a single linalg.generic. Result: 1 loop, 1 pass over memory.
 *
 * 2. "Partial fusion" (greedy pair-wise): HexagonFusion greedily fuses
 *    adjacent pairs (add+scale, bias+relu). Result: 3 groups, 3 loops.
 *
 * 3. "Default ordering" (tiling-first): HexagonTiling runs first, creating
 *    loop nests that prevent fusion. Each op stays separate.
 *    Result: 5 separate loops with intermediate buffers.
 */
#include "common.h"

#define N (256 * 1024)  /* 256K floats = 1 MB — exceeds L2 */

static float __attribute__((aligned(128))) inp[N];
static float __attribute__((aligned(128))) bias_arr[N];
static float __attribute__((aligned(128))) out[N];
/* Intermediate buffers — model separate MLIR tensor/memref allocations */
static float __attribute__((aligned(128))) tmp1[N];
static float __attribute__((aligned(128))) tmp2[N];
static float __attribute__((aligned(128))) tmp3[N];
static float __attribute__((aligned(128))) tmp4[N];

/* ========================================================================
 * Ordering 1: E-graph optimal (fusion-first)
 * All 5 operations fused into a single loop → 1 pass over memory.
 * This is what the e-graph framework selects as optimal.
 * ======================================================================== */
__attribute__((noinline))
static void chain5_fused(const float *restrict inp,
                         const float *restrict bias_arr,
                         float *restrict out,
                         float scale, float clamp_max, int n) {
    for (int i = 0; i < n; i++) {
        float x = inp[i];
        x = x + bias_arr[i];   /* add */
        x = x * scale;         /* scale */
        x = x + 0.1f;          /* bias */
        x = x > 0.0f ? x : 0.0f;  /* relu */
        x = x < clamp_max ? x : clamp_max;  /* clamp */
        out[i] = x;
    }
}

/* ========================================================================
 * Ordering 2: Partial fusion (greedy pair-wise)
 * Greedy fusion merges adjacent pairs but misses global fusion.
 * Produces 3 groups: (add+scale) → tmp1, (bias+relu) → tmp2, (clamp) → out
 * Each group uses a separate output buffer (MLIR tensor semantics).
 * ======================================================================== */
__attribute__((noinline))
static void chain5_partial(const float *restrict inp,
                           const float *restrict bias_arr,
                           float *restrict tmp1,
                           float *restrict tmp2,
                           float *restrict out,
                           float scale, float clamp_max, int n) {
    /* Fused pair 1: add + scale → tmp1 */
    for (int i = 0; i < n; i++) {
        tmp1[i] = (inp[i] + bias_arr[i]) * scale;
    }
    /* Fused pair 2: bias + relu → tmp2 */
    for (int i = 0; i < n; i++) {
        float x = tmp1[i] + 0.1f;
        tmp2[i] = x > 0.0f ? x : 0.0f;
    }
    /* Remaining: clamp → out */
    for (int i = 0; i < n; i++) {
        out[i] = tmp2[i] < clamp_max ? tmp2[i] : clamp_max;
    }
}

/* ========================================================================
 * Ordering 3: Default (tiling-first, no fusion)
 * Each operation writes to its own intermediate buffer.
 * This faithfully represents MLIR lowering where each linalg.generic
 * produces a separate memref. 5 loops, 5 passes over memory.
 * ======================================================================== */
__attribute__((noinline))
static void chain5_unfused(const float *restrict inp,
                           const float *restrict bias_arr,
                           float *restrict tmp1,
                           float *restrict tmp2,
                           float *restrict tmp3,
                           float *restrict tmp4,
                           float *restrict out,
                           float scale, float clamp_max, int n) {
    /* Op 1: add → tmp1 */
    for (int i = 0; i < n; i++)
        tmp1[i] = inp[i] + bias_arr[i];
    /* Op 2: scale → tmp2 */
    for (int i = 0; i < n; i++)
        tmp2[i] = tmp1[i] * scale;
    /* Op 3: bias → tmp3 */
    for (int i = 0; i < n; i++)
        tmp3[i] = tmp2[i] + 0.1f;
    /* Op 4: relu → tmp4 */
    for (int i = 0; i < n; i++)
        tmp4[i] = tmp3[i] > 0.0f ? tmp3[i] : 0.0f;
    /* Op 5: clamp → out */
    for (int i = 0; i < n; i++)
        out[i] = tmp4[i] < clamp_max ? tmp4[i] : clamp_max;
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(inp, N, 42);
    init_array(bias_arr, N, 137);
    float scale = 2.5f;
    float clamp_max = 6.0f;  /* ReLU6 */

    /* Default ordering (tiling-first → 5 loops, 5 buffers) */
    BENCH(chain5_unfused(inp, bias_arr, tmp1, tmp2, tmp3, tmp4, out,
                         scale, clamp_max, N),
          "ordering", "default_5loops", N);
    consume(out, N);

    /* Partial fusion (greedy → 3 loops, 2 intermediate buffers) */
    BENCH(chain5_partial(inp, bias_arr, tmp1, tmp2, out,
                         scale, clamp_max, N),
          "ordering", "partial_3loops", N);
    consume(out, N);

    /* E-graph optimal (fusion-first → 1 loop, no intermediates) */
    BENCH(chain5_fused(inp, bias_arr, out, scale, clamp_max, N),
          "ordering", "egraph_1loop", N);
    consume(out, N);

    SIM_RELEASE_HVX;
    return 0;
}
