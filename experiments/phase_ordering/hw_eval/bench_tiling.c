/*
 * bench_tiling.c - Measures the effect of the VTCMTiling pass.
 *
 * Compares tiled vs untiled matrix-vector multiply.
 * Untiled = standard row-major access (poor locality for large matrices).
 * Tiled   = block-tiled access (simulates VTCM tiling with good locality).
 *
 * Maps to: VTCMTiling pass position in the e-graph cost model.
 */
#include "common.h"

#define M  512   /* rows */
#define K  512   /* cols */
#define TILE 64  /* tile size (simulates VTCM block size) */

static float __attribute__((aligned(128))) A[M * K];
static float __attribute__((aligned(128))) x[K];
static float __attribute__((aligned(128))) y[M];

/* Untiled: no VTCM tiling. Accesses columns of x repeatedly for each row.
   For large K, x falls out of L1/L2 cache between rows. */
__attribute__((noinline))
static void matvec_untiled(const float *restrict A,
                           const float *restrict x,
                           float *restrict y,
                           int m, int k) {
    for (int i = 0; i < m; i++) {
        float sum = 0.0f;
        for (int j = 0; j < k; j++)
            sum += A[i * k + j] * x[j];
        y[i] = sum;
    }
}

/* Tiled: simulates VTCM tiling. Processes blocks of x that fit in fast memory.
   The outer loop over tiles ensures x[jj:jj+TILE] stays in cache. */
__attribute__((noinline))
static void matvec_tiled(const float *restrict A,
                         const float *restrict x,
                         float *restrict y,
                         int m, int k, int tile) {
    /* Zero output */
    for (int i = 0; i < m; i++)
        y[i] = 0.0f;

    /* Process in tiles along K dimension */
    for (int jj = 0; jj < k; jj += tile) {
        int jend = min_int(jj + tile, k);
        for (int i = 0; i < m; i++) {
            float sum = 0.0f;
            for (int j = jj; j < jend; j++)
                sum += A[i * k + j] * x[j];
            y[i] += sum;
        }
    }
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(A, M * K, 42);
    init_array(x, K, 137);

    BENCH(matvec_untiled(A, x, y, M, K),
          "tiling", "untiled", M * K);
    consume(y, M);

    BENCH(matvec_tiled(A, x, y, M, K, TILE),
          "tiling", "tiled", M * K);
    consume(y, M);

    SIM_RELEASE_HVX;
    return 0;
}
