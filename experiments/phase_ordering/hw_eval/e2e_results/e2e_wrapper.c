/*
 * e2e_wrapper.c — Standalone wrapper to measure MLIR-compiled kernel on hexagon-sim.
 *
 * This wrapper allocates input/output buffers, constructs memref descriptors,
 * calls the MLIR-compiled kernel, and measures cycle counts.
 *
 * The kernel is linked as a separate object file (.o from run_e2e_ordering.py).
 *
 * Compile:
 *   hexagon-clang -O2 -mv75 -mhvx e2e_wrapper.c <kernel>.o \
 *     -lhexagon_standalone -lhexagon -o <kernel>.elf
 *
 * Run:
 *   hexagon-sim -mv75 --simulated_returnval <kernel>.elf
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <hexagon_standalone.h>
#include <hexagon_sim_timer.h>

#define WARMUP_ITERS   3
#define MEASURE_ITERS  10

/* Prevent dead-code elimination */
static volatile float g_sink = 0.0f;

/*
 * Unranked memref descriptor: rank (i64) + pointer to ranked descriptor.
 * The ranked descriptor for memref<MxNxf32, strided<[N, 1], offset: ?>> is:
 *   { float* allocatedPtr, float* alignedPtr, intptr_t offset,
 *     intptr_t sizes[2], intptr_t strides[2] }
 */
typedef struct {
    float *allocated;
    float *aligned;
    int32_t offset;
    int32_t sizes[2];
    int32_t strides[2];
} MemrefDesc2D;

/* add_2d_mlir: elementwise addition of two 63x16384 float tensors */
extern void add_2d_mlir(int64_t rank0, MemrefDesc2D *desc0,
                        int64_t rank1, MemrefDesc2D *desc1,
                        int64_t rank2, MemrefDesc2D *desc2,
                        int32_t a3, int32_t a4, int32_t a5,
                        int32_t a6, int32_t a7, int32_t a8);

/* HexagonAPI initialization (linked from the .o runtime) */
extern void _GLOBAL__sub_I_HexagonAPI_cpp(void) __attribute__((weak));

#define ROWS 63
#define COLS 16384
#define N    (ROWS * COLS)

static void init_array(float *arr, int n, int seed) {
    for (int i = 0; i < n; i++) {
        arr[i] = (float)((i * 1103515245 + seed) % 1000) * 0.001f - 0.5f;
    }
}

int main(void) {
    /* Allocate aligned buffers */
    float *a = (float *)memalign(128, N * sizeof(float));
    float *b = (float *)memalign(128, N * sizeof(float));
    float *c = (float *)memalign(128, N * sizeof(float));

    if (!a || !b || !c) {
        printf("ERROR: allocation failed\n");
        return 1;
    }

    init_array(a, N, 42);
    init_array(b, N, 137);
    memset(c, 0, N * sizeof(float));

    /* Construct memref descriptors */
    MemrefDesc2D desc_a = { a, a, 0, {ROWS, COLS}, {COLS, 1} };
    MemrefDesc2D desc_b = { b, b, 0, {ROWS, COLS}, {COLS, 1} };
    MemrefDesc2D desc_c = { c, c, 0, {ROWS, COLS}, {COLS, 1} };

    /* Warm up */
    for (int w = 0; w < WARMUP_ITERS; w++) {
        add_2d_mlir(2, &desc_a, 2, &desc_b, 2, &desc_c, 0, 0, 0, 0, 0, 0);
    }

    /* Measure */
    unsigned long long total = 0;
    for (int m = 0; m < MEASURE_ITERS; m++) {
        unsigned long long start = hexagon_sim_read_pcycles();
        add_2d_mlir(2, &desc_a, 2, &desc_b, 2, &desc_c, 0, 0, 0, 0, 0, 0);
        unsigned long long end = hexagon_sim_read_pcycles();
        total += (end - start);
    }

    unsigned long long avg = total / MEASURE_ITERS;
    printf("RESULT: bench=add_2d_mlir cycles=%llu n=%d iters=%d\n",
           avg, N, MEASURE_ITERS);

    /* Prevent DCE */
    float s = 0.0f;
    for (int i = 0; i < N; i += 1024)
        s += c[i];
    g_sink = s;

    free(a);
    free(b);
    free(c);
    return 0;
}
