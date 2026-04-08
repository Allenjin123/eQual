#!/usr/bin/env bash
# run_ordering_eval.sh - Build and run pass ordering experiments.
#
# These benchmarks demonstrate REAL cycle-count speedup from the
# e-graph framework's optimal pass ordering vs default ordering.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build"
RESULTS_DIR="${SCRIPT_DIR}/results"

HEXAGON_TOOLS="${HEXAGON_TOOLS:-/home/allenjin/Projects/qualcomm-mlir/Hexagon_SDK/6.5.0.0/tools/HEXAGON_Tools/19.0.07/Tools}"
CC="${HEXAGON_TOOLS}/bin/hexagon-clang"
SIM="${HEXAGON_TOOLS}/bin/hexagon-sim"
ARCH="v73"

COMMON_FLAGS="-m${ARCH} -mhvx -I${SCRIPT_DIR}"
LDFLAGS="-lstandalone -lhexagon"
SIMFLAGS="-m${ARCH} --simulated_returnval"

mkdir -p "${BUILD_DIR}" "${RESULTS_DIR}"

BENCHMARKS="bench_ordering bench_fuse_tile_order bench_size_sweep bench_matmul_epilogue"
OPT_LEVELS="O1 O3"

echo "=== Compiling ordering benchmarks ==="
for bench in ${BENCHMARKS}; do
    for opt in ${OPT_LEVELS}; do
        echo "  ${bench} at -${opt} ..."
        "${CC}" ${COMMON_FLAGS} -${opt} "${SCRIPT_DIR}/${bench}.c" \
            -o "${BUILD_DIR}/${bench}_${opt}" ${LDFLAGS} 2>&1
    done
done
echo ""

echo "=== Running ordering benchmarks ==="
for bench in ${BENCHMARKS}; do
    for opt in ${OPT_LEVELS}; do
        outfile="${RESULTS_DIR}/${bench}_${opt}.txt"
        echo "  Running ${bench}_${opt} ..."
        "${SIM}" ${SIMFLAGS} "${BUILD_DIR}/${bench}_${opt}" > "${outfile}" 2>&1 || {
            echo "  WARNING: ${bench}_${opt} exited non-zero"
        }
        grep "^RESULT:" "${outfile}" 2>/dev/null || echo "  (no results)"
        echo ""
    done
done

# Combine all ordering results
echo "=== Combining results ==="
COMBINED="${RESULTS_DIR}/ordering_results.txt"
: > "${COMBINED}"
for bench in ${BENCHMARKS}; do
    for opt in ${OPT_LEVELS}; do
        echo "# ${bench} -${opt}" >> "${COMBINED}"
        grep "^RESULT:" "${RESULTS_DIR}/${bench}_${opt}.txt" >> "${COMBINED}" 2>/dev/null || true
    done
done

echo "Combined results:"
cat "${COMBINED}"
echo ""
echo "=== Done ==="
