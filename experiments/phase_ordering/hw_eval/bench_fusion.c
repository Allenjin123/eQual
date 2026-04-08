/*
 * bench_fusion.c - Measures the effect of the HexagonFusion pass.
 *
 * Compares fused vs unfused elementwise operations (add + scale + relu).
 * Unfused = 3 separate loops (3 passes over memory).
 * Fused   = 1 loop doing all 3 operations (1 pass over memory).
 *
 * Maps to: HexagonFusion pass position in the e-graph cost model.
 */
#include "common.h"

#define N (256 * 1024)  /* 256K floats = 1 MB — exceeds L2 to stress bandwidth */

static float __attribute__((aligned(128))) a[N];
static float __attribute__((aligned(128))) b[N];
static float __attribute__((aligned(128))) c[N];

/* Unfused: what the compiler produces WITHOUT HexagonFusion.
   Three separate vectorized loops, each reading/writing the full array. */
__attribute__((noinline))
static void elementwise_unfused(const float *restrict a,
                                const float *restrict b,
                                float *restrict c,
                                float scale, int n) {
    /* Pass 1: elementwise add */
    for (int i = 0; i < n; i++)
        c[i] = a[i] + b[i];

    /* Pass 2: elementwise scale */
    for (int i = 0; i < n; i++)
        c[i] = c[i] * scale;

    /* Pass 3: ReLU */
    for (int i = 0; i < n; i++)
        c[i] = c[i] > 0.0f ? c[i] : 0.0f;
}

/* Fused: what the compiler produces WITH HexagonFusion.
   Single loop doing add + scale + relu in one pass. */
__attribute__((noinline))
static void elementwise_fused(const float *restrict a,
                              const float *restrict b,
                              float *restrict c,
                              float scale, int n) {
    for (int i = 0; i < n; i++) {
        float tmp = (a[i] + b[i]) * scale;
        c[i] = tmp > 0.0f ? tmp : 0.0f;
    }
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(a, N, 42);
    init_array(b, N, 137);
    float scale = 2.5f;

    BENCH(elementwise_unfused(a, b, c, scale, N),
          "fusion", "unfused", N);
    consume(c, N);

    BENCH(elementwise_fused(a, b, c, scale, N),
          "fusion", "fused", N);
    consume(c, N);

    SIM_RELEASE_HVX;
    return 0;
}
