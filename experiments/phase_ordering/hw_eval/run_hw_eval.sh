#!/usr/bin/env bash
# run_hw_eval.sh - Build and run all Hexagon hardware evaluation benchmarks.
#
# Usage:
#   export HEXAGON_SDK_ROOT=/path/to/Hexagon_SDK/6.5.0.0
#   export HEXAGON_TOOLS=/path/to/Tools
#   export HEXAGON_ARCH_VERSION=73
#   ./run_hw_eval.sh
#
# Outputs: results/*.txt (raw simulator output), results/all_results.json

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build"
RESULTS_DIR="${SCRIPT_DIR}/results"

# --- Environment checks ---
: "${HEXAGON_TOOLS:?Set HEXAGON_TOOLS to the Hexagon Tools directory}"
: "${HEXAGON_ARCH_VERSION:=73}"

CC="${HEXAGON_TOOLS}/bin/hexagon-clang"
SIM="${HEXAGON_TOOLS}/bin/hexagon-sim"
ARCH="v${HEXAGON_ARCH_VERSION}"

if [ ! -x "${CC}" ]; then
    echo "ERROR: hexagon-clang not found at ${CC}"
    exit 1
fi
if [ ! -x "${SIM}" ]; then
    echo "ERROR: hexagon-sim not found at ${SIM}"
    exit 1
fi

CFLAGS="-m${ARCH} -mhvx -O3 -I${SCRIPT_DIR}"
LDFLAGS="-lstandalone -lhexagon"
SIMFLAGS="-m${ARCH} --simulated_returnval"

mkdir -p "${BUILD_DIR}" "${RESULTS_DIR}"

BENCHMARKS="bench_fusion bench_tiling bench_loop_order bench_scalar_hoist bench_interaction"

# --- Compile ---
echo "=== Compiling benchmarks for Hexagon ${ARCH} ==="
for bench in ${BENCHMARKS}; do
    echo "  Compiling ${bench}.c ..."
    "${CC}" ${CFLAGS} "${SCRIPT_DIR}/${bench}.c" -o "${BUILD_DIR}/${bench}" ${LDFLAGS} 2>&1
    echo "  -> ${BUILD_DIR}/${bench}"
done
echo ""

# --- Run ---
echo "=== Running benchmarks on hexagon-sim ==="
for bench in ${BENCHMARKS}; do
    echo "  Running ${bench} ..."
    outfile="${RESULTS_DIR}/${bench}.txt"
    # Run simulator, capturing both stdout and stderr
    "${SIM}" ${SIMFLAGS} "${BUILD_DIR}/${bench}" > "${outfile}" 2>&1 || {
        echo "  WARNING: ${bench} exited with non-zero status (may still have results)"
    }
    echo "  -> ${outfile}"
    # Show RESULT lines immediately
    grep "^RESULT:" "${outfile}" 2>/dev/null || echo "  (no RESULT lines found)"
    echo ""
done

# --- Combine results ---
echo "=== Combining results ==="
COMBINED="${RESULTS_DIR}/all_results.txt"
cat /dev/null > "${COMBINED}"
for bench in ${BENCHMARKS}; do
    grep "^RESULT:" "${RESULTS_DIR}/${bench}.txt" >> "${COMBINED}" 2>/dev/null || true
done

echo "Combined results:"
cat "${COMBINED}"
echo ""

# --- Generate JSON ---
python3 -c "
import re, json, sys

results = []
with open('${COMBINED}') as f:
    for line in f:
        m = re.match(r'RESULT: bench=(\S+) variant=(\S+) cycles=(\d+) n=(\d+)', line)
        if m:
            results.append({
                'benchmark': m.group(1),
                'variant': m.group(2),
                'cycles': int(m.group(3)),
                'n': int(m.group(4))
            })

with open('${RESULTS_DIR}/all_results.json', 'w') as f:
    json.dump(results, f, indent=2)
print(f'Wrote {len(results)} results to ${RESULTS_DIR}/all_results.json')
" 2>/dev/null || echo "  (Python JSON generation skipped)"

echo ""
echo "=== Done ==="
echo "Run 'python3 analyze_hw_results.py' for analysis and figures."
