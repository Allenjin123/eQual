/*
 * bench_loop_order.c - Measures the effect of ScheduleMatmulForHVX pass.
 *
 * Compares different loop orderings for matrix multiplication.
 * ijk  = standard ordering (poor column access for B).
 * ikj  = reordered (row-access for both A and C, better for HVX).
 * tiled = blocked (best cache behavior, combines scheduling + tiling).
 *
 * Maps to: ScheduleMatmulForHVX pass position in the e-graph cost model.
 */
#include "common.h"

#define N 256
#define BLOCK 32

static float __attribute__((aligned(128))) A[N * N];
static float __attribute__((aligned(128))) B[N * N];
static float __attribute__((aligned(128))) C[N * N];

/* ijk ordering: standard, column access to B is cache-unfriendly. */
__attribute__((noinline))
static void matmul_ijk(const float *restrict A,
                       const float *restrict B,
                       float *restrict C,
                       int n) {
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++) {
            float sum = 0.0f;
            for (int k = 0; k < n; k++)
                sum += A[i * n + k] * B[k * n + j];
            C[i * n + j] = sum;
        }
}

/* ikj ordering: ScheduleMatmulForHVX reorders loops for row-major access.
   Inner loop (j) accesses consecutive elements in B and C. */
__attribute__((noinline))
static void matmul_ikj(const float *restrict A,
                       const float *restrict B,
                       float *restrict C,
                       int n) {
    memset(C, 0, n * n * sizeof(float));
    for (int i = 0; i < n; i++)
        for (int k = 0; k < n; k++) {
            float a_ik = A[i * n + k];
            for (int j = 0; j < n; j++)
                C[i * n + j] += a_ik * B[k * n + j];
        }
}

/* Blocked matmul: combines loop reordering + tiling.
   Represents having both ScheduleMatmulForHVX and HexagonTiling active. */
__attribute__((noinline))
static void matmul_blocked(const float *restrict A,
                           const float *restrict B,
                           float *restrict C,
                           int n, int block) {
    memset(C, 0, n * n * sizeof(float));
    for (int ii = 0; ii < n; ii += block)
        for (int kk = 0; kk < n; kk += block)
            for (int jj = 0; jj < n; jj += block) {
                int iend = min_int(ii + block, n);
                int kend = min_int(kk + block, n);
                int jend = min_int(jj + block, n);
                for (int i = ii; i < iend; i++)
                    for (int k = kk; k < kend; k++) {
                        float a_ik = A[i * n + k];
                        for (int j = jj; j < jend; j++)
                            C[i * n + j] += a_ik * B[k * n + j];
                    }
            }
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(A, N * N, 42);
    init_array(B, N * N, 137);

    BENCH(matmul_ijk(A, B, C, N),
          "loop_order", "ijk", N);
    consume(C, N * N);

    BENCH(matmul_ikj(A, B, C, N),
          "loop_order", "ikj", N);
    consume(C, N * N);

    BENCH(matmul_blocked(A, B, C, N, BLOCK),
          "loop_order", "blocked", N);
    consume(C, N * N);

    SIM_RELEASE_HVX;
    return 0;
}
