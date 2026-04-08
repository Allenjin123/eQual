/*
 * bench_matmul_epilogue.c - Compute-bound workload: matmul + epilogue fusion.
 *
 * Shows that even for compute-bound workloads, pass ordering matters.
 * When fusion runs before tiling, the bias+relu epilogue is fused into
 * the matmul accumulation loop, avoiding an extra pass over the output matrix.
 *
 * Scenario: C = relu(A * B + bias) for 128x128 matrices.
 *
 * 1. Epilogue fused: matmul accumulates, adds bias, applies relu in one pass
 *    over the output. This is what fusion-first ordering produces.
 *
 * 2. Epilogue separate: matmul writes to C, then a second pass reads C,
 *    adds bias, applies relu, and writes C again. This is what tiling-first
 *    ordering produces (tiling barriers prevent matmul-epilogue fusion).
 */
#include "common.h"

#define M 128
#define K 128
#define NN 128

static float __attribute__((aligned(128))) A[M * K];
static float __attribute__((aligned(128))) B[K * NN];
static float __attribute__((aligned(128))) C[M * NN];
static float __attribute__((aligned(128))) bias_vec[NN];

/* Epilogue fused: matmul + bias + relu in one write pass */
__attribute__((noinline))
static void matmul_fused(const float *restrict A,
                         const float *restrict B,
                         float *restrict C,
                         const float *restrict bias,
                         int m, int k, int n) {
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            float acc = 0.0f;
            for (int p = 0; p < k; p++) {
                acc += A[i * k + p] * B[p * n + j];
            }
            /* Epilogue fused into accumulation */
            acc += bias[j];
            C[i * n + j] = acc > 0.0f ? acc : 0.0f;
        }
    }
}

/* Epilogue separate: matmul then separate bias+relu pass */
__attribute__((noinline))
static void matmul_separate(const float *restrict A,
                            const float *restrict B,
                            float *restrict C,
                            const float *restrict bias,
                            int m, int k, int n) {
    /* Phase 1: matmul */
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            float acc = 0.0f;
            for (int p = 0; p < k; p++) {
                acc += A[i * k + p] * B[p * n + j];
            }
            C[i * n + j] = acc;
        }
    }
    /* Phase 2: bias + relu (extra read+write pass over C) */
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            float x = C[i * n + j] + bias[j];
            C[i * n + j] = x > 0.0f ? x : 0.0f;
        }
    }
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(A, M * K, 42);
    init_array(B, K * NN, 137);
    init_array(bias_vec, NN, 99);

    BENCH(matmul_separate(A, B, C, bias_vec, M, K, NN),
          "matmul_epi", "separate", M);
    consume(C, M * NN);

    BENCH(matmul_fused(A, B, C, bias_vec, M, K, NN),
          "matmul_epi", "fused", M);
    consume(C, M * NN);

    SIM_RELEASE_HVX;
    return 0;
}
