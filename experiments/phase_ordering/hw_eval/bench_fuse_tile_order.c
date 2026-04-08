/*
 * bench_fuse_tile_order.c - Fusion-before-tiling vs tiling-before-fusion.
 *
 * Directly validates the pass commutativity analysis: HexagonFusion and
 * HexagonTiling are marked as commutative (no ordering constraint), but
 * their ordering produces structurally different code with different
 * performance.
 *
 * Scenario: 2-op chain (add + scale) on 256K floats.
 *
 * 1. Fuse-then-tile: Fuse the two ops into 1 loop, then tile the fused
 *    loop (blocked iteration). Inner loop does both ops per tile.
 *    → 1 pass per tile, good spatial locality.
 *
 * 2. Tile-then-fuse: Tile each op independently. Even if fusion runs
 *    after, it can't fuse across tile boundaries (the loop structures
 *    differ). → 2 passes per tile.
 *
 * 3. Fuse only (no tiling): 1 monolithic loop over all data.
 *    → 1 pass but no blocking for cache.
 *
 * This shows the e-graph discovers that fuse-then-tile dominates
 * tile-then-fuse, which is a genuine ordering effect.
 */
#include "common.h"

#define N (256 * 1024)
#define TILE 4096

static float __attribute__((aligned(128))) a[N];
static float __attribute__((aligned(128))) b[N];
static float __attribute__((aligned(128))) c[N];

/* Fuse-then-tile: single fused loop, blocked */
__attribute__((noinline))
static void fuse_then_tile(const float *restrict a,
                           const float *restrict b,
                           float *restrict c,
                           float scale, int n) {
    for (int t = 0; t < n; t += TILE) {
        int end = min_int(t + TILE, n);
        for (int i = t; i < end; i++) {
            c[i] = (a[i] + b[i]) * scale;
        }
    }
}

/* Tile-then-fuse: two separate tiled loops (fusion can't merge across tiles) */
__attribute__((noinline))
static void tile_then_fuse(const float *restrict a,
                           const float *restrict b,
                           float *restrict c,
                           float scale, int n) {
    /* Tiled add */
    for (int t = 0; t < n; t += TILE) {
        int end = min_int(t + TILE, n);
        for (int i = t; i < end; i++) {
            c[i] = a[i] + b[i];
        }
    }
    /* Tiled scale */
    for (int t = 0; t < n; t += TILE) {
        int end = min_int(t + TILE, n);
        for (int i = t; i < end; i++) {
            c[i] = c[i] * scale;
        }
    }
}

/* No tiling, just fused: single monolithic loop */
__attribute__((noinline))
static void fuse_no_tile(const float *restrict a,
                         const float *restrict b,
                         float *restrict c,
                         float scale, int n) {
    for (int i = 0; i < n; i++) {
        c[i] = (a[i] + b[i]) * scale;
    }
}

/* No fusion, no tiling: two monolithic loops */
__attribute__((noinline))
static void unfused_untiled(const float *restrict a,
                            const float *restrict b,
                            float *restrict c,
                            float scale, int n) {
    for (int i = 0; i < n; i++)
        c[i] = a[i] + b[i];
    for (int i = 0; i < n; i++)
        c[i] = c[i] * scale;
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(a, N, 42);
    init_array(b, N, 137);
    float scale = 2.5f;

    BENCH(tile_then_fuse(a, b, c, scale, N),
          "fuse_tile", "tile_then_fuse", N);
    consume(c, N);

    BENCH(fuse_then_tile(a, b, c, scale, N),
          "fuse_tile", "fuse_then_tile", N);
    consume(c, N);

    BENCH(fuse_no_tile(a, b, c, scale, N),
          "fuse_tile", "fuse_no_tile", N);
    consume(c, N);

    BENCH(unfused_untiled(a, b, c, scale, N),
          "fuse_tile", "unfused_untiled", N);
    consume(c, N);

    SIM_RELEASE_HVX;
    return 0;
}
