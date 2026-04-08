/*
 * bench_interaction.c - Measures non-linear pass interaction effects.
 *
 * Demonstrates that the benefit of fusion DEPENDS on whether tiling
 * is also applied, and vice versa. This validates the non-linear
 * hardware-aware cost model (Section 5 of the paper).
 *
 * Four configurations:
 *   1. no_fusion_no_tiling  - baseline (worst)
 *   2. fusion_only          - fusion without tiling
 *   3. tiling_only          - tiling without fusion
 *   4. fusion_and_tiling    - both passes applied (best)
 *
 * The speedup of (4) should be super-additive compared to (2) and (3),
 * demonstrating non-linear interaction that a linear cost model misses.
 */
#include "common.h"

#define M    512   /* rows */
#define K    512   /* cols */
#define TILE 64

static float __attribute__((aligned(128))) A[M * K];
static float __attribute__((aligned(128))) x[K];
static float __attribute__((aligned(128))) y[M];
static float __attribute__((aligned(128))) z[M];

/* Config 1: No fusion, no tiling.
   Separate matvec + elementwise bias+relu, untiled. */
__attribute__((noinline))
static void no_fusion_no_tiling(const float *restrict A,
                                const float *restrict x,
                                float *restrict y,
                                float *restrict z,
                                float bias, int m, int k) {
    /* Op 1: y = A * x (untiled) */
    for (int i = 0; i < m; i++) {
        float sum = 0.0f;
        for (int j = 0; j < k; j++)
            sum += A[i * k + j] * x[j];
        y[i] = sum;
    }
    /* Op 2: z = relu(y + bias) (separate loop) */
    for (int i = 0; i < m; i++) {
        float tmp = y[i] + bias;
        z[i] = tmp > 0.0f ? tmp : 0.0f;
    }
}

/* Config 2: Fusion only, no tiling.
   Fused matvec + bias + relu in one loop, but untiled. */
__attribute__((noinline))
static void fusion_only(const float *restrict A,
                        const float *restrict x,
                        float *restrict z,
                        float bias, int m, int k) {
    for (int i = 0; i < m; i++) {
        float sum = 0.0f;
        for (int j = 0; j < k; j++)
            sum += A[i * k + j] * x[j];
        float tmp = sum + bias;
        z[i] = tmp > 0.0f ? tmp : 0.0f;
    }
}

/* Config 3: Tiling only, no fusion.
   Separate matvec + bias+relu, but matvec is tiled. */
__attribute__((noinline))
static void tiling_only(const float *restrict A,
                        const float *restrict x,
                        float *restrict y,
                        float *restrict z,
                        float bias, int m, int k, int tile) {
    /* Op 1: y = A * x (tiled along K) */
    for (int i = 0; i < m; i++)
        y[i] = 0.0f;
    for (int jj = 0; jj < k; jj += tile) {
        int jend = min_int(jj + tile, k);
        for (int i = 0; i < m; i++) {
            float sum = 0.0f;
            for (int j = jj; j < jend; j++)
                sum += A[i * k + j] * x[j];
            y[i] += sum;
        }
    }
    /* Op 2: z = relu(y + bias) (separate loop, not fused) */
    for (int i = 0; i < m; i++) {
        float tmp = y[i] + bias;
        z[i] = tmp > 0.0f ? tmp : 0.0f;
    }
}

/* Config 4: Fusion AND tiling.
   Fused matvec + bias + relu, with tiling along K.
   This is the optimal ordering: fusion before tiling. */
__attribute__((noinline))
static void fusion_and_tiling(const float *restrict A,
                              const float *restrict x,
                              float *restrict z,
                              float bias, int m, int k, int tile) {
    for (int i = 0; i < m; i++)
        z[i] = 0.0f;
    for (int jj = 0; jj < k; jj += tile) {
        int jend = min_int(jj + tile, k);
        for (int i = 0; i < m; i++) {
            float sum = 0.0f;
            for (int j = jj; j < jend; j++)
                sum += A[i * k + j] * x[j];
            z[i] += sum;
        }
    }
    /* Fused epilogue: bias + relu applied once after accumulation. */
    for (int i = 0; i < m; i++) {
        float tmp = z[i] + bias;
        z[i] = tmp > 0.0f ? tmp : 0.0f;
    }
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(A, M * K, 42);
    init_array(x, K, 137);
    float bias = 0.1f;

    BENCH(no_fusion_no_tiling(A, x, y, z, bias, M, K),
          "interaction", "none", M * K);
    consume(z, M);

    BENCH(fusion_only(A, x, z, bias, M, K),
          "interaction", "fusion_only", M * K);
    consume(z, M);

    BENCH(tiling_only(A, x, y, z, bias, M, K, TILE),
          "interaction", "tiling_only", M * K);
    consume(z, M);

    BENCH(fusion_and_tiling(A, x, z, bias, M, K, TILE),
          "interaction", "fusion_and_tiling", M * K);
    consume(z, M);

    SIM_RELEASE_HVX;
    return 0;
}
