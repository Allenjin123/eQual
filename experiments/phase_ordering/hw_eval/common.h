/*
 * common.h - Shared utilities for Hexagon hardware evaluation benchmarks.
 *
 * These benchmarks validate the e-graph pass ordering cost model against
 * actual Hexagon v73 cycle counts measured on hexagon-sim.
 */
#ifndef HW_EVAL_COMMON_H
#define HW_EVAL_COMMON_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <hexagon_standalone.h>
#include <hexagon_sim_timer.h>

#define WARMUP_ITERS  3
#define MEASURE_ITERS 10

/* Prevent dead-code elimination of computed results. */
static volatile float g_sink = 0.0f;

static inline void consume(const float *arr, int n) {
    float s = 0.0f;
    for (int i = 0; i < n; i += 1024)
        s += arr[i];
    g_sink = s;
}

/* Print one benchmark result in a machine-parseable line.
   Format: RESULT: bench=<name> variant=<name> cycles=<avg> n=<size> */
static inline void print_result(const char *bench, const char *variant,
                                unsigned long long cycles, int n) {
    printf("RESULT: bench=%s variant=%s cycles=%llu n=%d\n",
           bench, variant, cycles, n);
}

/* Measure the average pcycles of calling fn() over MEASURE_ITERS runs
   (after WARMUP_ITERS warm-up calls). */
#define BENCH(fn_call, bench_name, variant_name, size)                     \
    do {                                                                    \
        for (int _w = 0; _w < WARMUP_ITERS; _w++) { fn_call; }            \
        unsigned long long _total = 0;                                      \
        for (int _m = 0; _m < MEASURE_ITERS; _m++) {                      \
            unsigned long long _s = hexagon_sim_read_pcycles();            \
            fn_call;                                                        \
            unsigned long long _e = hexagon_sim_read_pcycles();            \
            _total += (_e - _s);                                            \
        }                                                                   \
        print_result(bench_name, variant_name,                              \
                     _total / MEASURE_ITERS, size);                         \
    } while (0)

static inline int min_int(int a, int b) { return a < b ? a : b; }

/* Initialize an array with deterministic pseudo-random values in [-0.5, 0.5]. */
static inline void init_array(float *arr, int n, int seed) {
    for (int i = 0; i < n; i++) {
        arr[i] = (float)((i * 1103515245 + seed) % 1000) * 0.001f - 0.5f;
    }
}

#endif /* HW_EVAL_COMMON_H */
