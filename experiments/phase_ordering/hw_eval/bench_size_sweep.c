/*
 * bench_size_sweep.c - Data size sweep showing ordering speedup is consistent.
 *
 * Tests 3-op chain (add → scale → relu) at different data sizes to confirm
 * that the ordering speedup comes from structural code differences (fewer
 * memory passes), not cache effects.
 *
 * Sizes: 1K (4KB), 16K (64KB), 64K (256KB), 256K (1MB), 1M (4MB)
 */
#include "common.h"

#define MAX_N (1024 * 1024)

static float __attribute__((aligned(128))) a[MAX_N];
static float __attribute__((aligned(128))) b[MAX_N];
static float __attribute__((aligned(128))) c[MAX_N];

/* Fused: 1 loop (e-graph optimal ordering) */
__attribute__((noinline))
static void chain3_fused(const float *restrict a,
                         const float *restrict b,
                         float *restrict c,
                         float scale, int n) {
    for (int i = 0; i < n; i++) {
        float x = (a[i] + b[i]) * scale;
        c[i] = x > 0.0f ? x : 0.0f;
    }
}

/* Unfused: 3 loops (default ordering) */
__attribute__((noinline))
static void chain3_unfused(const float *restrict a,
                           const float *restrict b,
                           float *restrict c,
                           float scale, int n) {
    for (int i = 0; i < n; i++)
        c[i] = a[i] + b[i];
    for (int i = 0; i < n; i++)
        c[i] = c[i] * scale;
    for (int i = 0; i < n; i++)
        c[i] = c[i] > 0.0f ? c[i] : 0.0f;
}

static void run_size(int n) {
    char name_fused[32], name_unfused[32];
    snprintf(name_fused, sizeof(name_fused), "fused_%dk", n / 1024);
    snprintf(name_unfused, sizeof(name_unfused), "unfused_%dk", n / 1024);

    BENCH(chain3_unfused(a, b, c, 2.5f, n),
          "sweep", name_unfused, n);
    consume(c, n);

    BENCH(chain3_fused(a, b, c, 2.5f, n),
          "sweep", name_fused, n);
    consume(c, n);
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(a, MAX_N, 42);
    init_array(b, MAX_N, 137);

    run_size(1024);        /* 4 KB — fits L1 */
    run_size(16 * 1024);   /* 64 KB — fits L2 */
    run_size(64 * 1024);   /* 256 KB — stresses L2 */
    run_size(256 * 1024);  /* 1 MB — exceeds L2 */
    run_size(1024 * 1024); /* 4 MB — main memory */

    SIM_RELEASE_HVX;
    return 0;
}
