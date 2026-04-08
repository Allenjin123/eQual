/*
 * bench_scalar_hoist.c - Measures the effect of HoistScalarOps pass.
 *
 * Compares loop-invariant scalar computation inside vs outside the loop.
 * Non-hoisted = scalar chain recomputed every iteration (redundant work).
 * Hoisted     = scalar chain computed once before the loop.
 *
 * Maps to: HoistScalarOps pass position in the e-graph cost model.
 */
#include "common.h"

#define N (64 * 1024)

static float __attribute__((aligned(128))) input[N];
static float __attribute__((aligned(128))) output[N];

/* Parameters for the scalar computation chain. */
static volatile float param_a = 3.14159f;
static volatile float param_b = 2.71828f;
static volatile float param_c = 1.41421f;

/* Compute a moderately expensive scalar chain.
   In real MLIR, this would be operations on tensor metadata
   (strides, offsets, broadcast factors) that are loop-invariant. */
__attribute__((noinline))
static float compute_scale(float a, float b, float c) {
    float s = a * b + c;
    s = s * s - a;
    s = s / (b + 1.0f);
    return s;
}

/* Non-hoisted: scalar chain recomputed inside every loop iteration.
   Represents pipeline WITHOUT HoistScalarOps. */
__attribute__((noinline))
static void transform_nonhoisted(const float *restrict in,
                                 float *restrict out,
                                 int n) {
    for (int i = 0; i < n; i++) {
        /* This recomputes the same value every iteration. */
        float scale = compute_scale(param_a, param_b, param_c);
        out[i] = in[i] * scale + (scale * 0.5f);
    }
}

/* Hoisted: scalar chain computed once before the loop.
   Represents pipeline WITH HoistScalarOps. */
__attribute__((noinline))
static void transform_hoisted(const float *restrict in,
                              float *restrict out,
                              int n) {
    float scale = compute_scale(param_a, param_b, param_c);
    float bias = scale * 0.5f;
    for (int i = 0; i < n; i++) {
        out[i] = in[i] * scale + bias;
    }
}

int main(void) {
    SIM_ACQUIRE_HVX;

    init_array(input, N, 42);

    BENCH(transform_nonhoisted(input, output, N),
          "scalar_hoist", "non_hoisted", N);
    consume(output, N);

    BENCH(transform_hoisted(input, output, N),
          "scalar_hoist", "hoisted", N);
    consume(output, N);

    SIM_RELEASE_HVX;
    return 0;
}
