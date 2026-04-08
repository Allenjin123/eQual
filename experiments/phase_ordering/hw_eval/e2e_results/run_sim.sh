#!/bin/bash
# Compile and run add_2d_kernel with different pass orderings on hexagon-sim.
set -euo pipefail

HEXAGON_TOOLS="${HEXAGON_TOOLS:-/home/allenjin/Projects/qualcomm-mlir/Hexagon_SDK/6.5.0.0/tools/HEXAGON_Tools/19.0.07/Tools}"
SDK_ROOT="${HEXAGON_SDK_ROOT:-/home/allenjin/Projects/qualcomm-mlir/Hexagon_SDK/6.5.0.0}"
CC="${HEXAGON_TOOLS}/bin/hexagon-clang"
SIM="${HEXAGON_TOOLS}/bin/hexagon-sim"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
KERNEL_DIR="${SCRIPT_DIR}/add_2d_kernel"

echo "=============================================="
echo "E2E Phase Ordering: Hexagon Simulator Benchmark"
echo "=============================================="
echo "Hexagon CC: ${CC}"
echo "Hexagon Sim: ${SIM}"
echo ""

# Standalone includes and libs
STANDALONE_INC="${SDK_ROOT}/rtos/qurt/computev75/include"
STANDALONE_LIB="${HEXAGON_TOOLS}/target/hexagon/lib/v75/G0"

RESULTS_FILE="${SCRIPT_DIR}/sim_results.json"
echo "{" > "${RESULTS_FILE}"

FIRST=true
for ordering in default hw-calibrated fusion-first vtcm-first worst-case; do
    OBJ="${KERNEL_DIR}/${ordering}.o"
    ELF="${KERNEL_DIR}/${ordering}.elf"

    if [ ! -f "${OBJ}" ]; then
        echo "SKIP: ${OBJ} not found"
        continue
    fi

    echo "--- Compiling + linking: ${ordering} ---"
    ${CC} -O2 -mv75 -mhvx \
        -I${SDK_ROOT}/rtos/qurt/computev75/include/posix \
        -I${SDK_ROOT}/rtos/qurt/computev75/include/qurt \
        -I${HEXAGON_TOOLS}/target/hexagon/include \
        ${SCRIPT_DIR}/e2e_wrapper.c ${OBJ} \
        -L${STANDALONE_LIB} \
        -lhexagon_standalone -lhexagon \
        -o ${ELF} 2>&1 || {
        echo "  LINK FAILED for ${ordering}, trying without runtime..."
        # Try simpler link
        ${CC} -O2 -mv75 -mhvx \
            -I${SDK_ROOT}/rtos/qurt/computev75/include/posix \
            -I${SDK_ROOT}/rtos/qurt/computev75/include/qurt \
            -I${HEXAGON_TOOLS}/target/hexagon/include \
            -c ${SCRIPT_DIR}/e2e_wrapper.c -o ${KERNEL_DIR}/wrapper.o 2>&1
        ${CC} -mv75 ${KERNEL_DIR}/wrapper.o ${OBJ} \
            -L${STANDALONE_LIB} \
            -lhexagon_standalone -lhexagon \
            -o ${ELF} 2>&1 || {
            echo "  LINK STILL FAILED for ${ordering}"
            continue
        }
    }

    echo "  Running on hexagon-sim..."
    RESULT=$(${SIM} -mv75 --simulated_returnval ${ELF} 2>&1) || true
    echo "${RESULT}" | grep -E "RESULT:|pcycles|cycles" || echo "  (no cycle data)"
    CYCLES=$(echo "${RESULT}" | grep "RESULT:" | sed 's/.*cycles=\([0-9]*\).*/\1/' || echo "N/A")

    if [ "$FIRST" = true ]; then
        FIRST=false
    else
        echo "," >> "${RESULTS_FILE}"
    fi
    echo "  \"${ordering}\": {\"cycles\": \"${CYCLES}\", \"raw\": \"$(echo "${RESULT}" | grep "RESULT:" | head -1)\"}" >> "${RESULTS_FILE}"

    echo "  Cycles: ${CYCLES}"
    echo ""
done

echo "}" >> "${RESULTS_FILE}"
echo "Results saved to ${RESULTS_FILE}"
