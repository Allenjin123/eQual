#!/bin/bash
# Focused build script for e2e phase ordering experiments.
# Uses system clang (18) and existing Hexagon SDK.
set -euo pipefail

REPO_DIR="/home/allenjin/Projects/qualcomm-mlir/hexagon-mlir"
BASE_DIR="/home/allenjin/Projects/qualcomm-mlir"

echo "=============================================="
echo "Phase Ordering E2E Build Script"
echo "=============================================="
echo "CPUs: $(nproc)"
echo "Repo: $REPO_DIR"

# Use system clang as HOST_TOOLCHAIN
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
echo "Using system clang: $($CC --version | head -1)"

# Hexagon SDK/Tools (already extracted)
export HEXAGON_SDK_ROOT="${BASE_DIR}/Hexagon_SDK/6.5.0.0"
HEXAGON_TOOLS_DIR="${BASE_DIR}/Hexagon_SDK/6.5.0.0/tools/HEXAGON_Tools/19.0.07/Tools"
export HEXAGON_TOOLS="${HEXAGON_TOOLS_DIR}"
echo "Hexagon SDK: ${HEXAGON_SDK_ROOT}"
echo "Hexagon Tools: ${HEXAGON_TOOLS}"

# ========== Step 1: Initialize submodules ==========
echo ""
echo "=== Step 1: Initializing submodules ==="
cd "${REPO_DIR}"

if [ ! -d "${REPO_DIR}/triton/.git" ]; then
    echo "Cloning triton submodule..."
    git submodule add --force https://github.com/triton-lang/triton.git triton 2>/dev/null || true
    cd triton
    git checkout e44bd1c83c1c3e8deac7c4f02683cfb3cc395c8b
    echo "Applying qcom patches to triton..."
    git apply "${REPO_DIR}/third_party_software/patches/triton/third_party_triton.patch" 2>/dev/null || echo "Patch already applied or N/A"
    cd "${REPO_DIR}"
else
    echo "Triton submodule already exists."
fi

if [ ! -d "${REPO_DIR}/triton_shared/.git" ]; then
    echo "Cloning triton_shared submodule..."
    git submodule add --force https://github.com/microsoft/triton-shared triton_shared 2>/dev/null || true
    cd triton_shared
    git checkout 2b728ad97bc02af821a0805b09075838911d4c19
    echo "Applying qcom patches to triton_shared..."
    git apply "${REPO_DIR}/third_party_software/patches/triton_shared/max_with_nan_propagation.patch" 2>/dev/null || echo "Patch already applied or N/A"
    git apply "${REPO_DIR}/third_party_software/patches/triton_shared/tt_shared_split_dim.patch" 2>/dev/null || echo "Patch already applied or N/A"
    cd "${REPO_DIR}"
else
    echo "triton_shared submodule already exists."
fi

# ========== Step 2: Build LLVM ==========
echo ""
echo "=== Step 2: Building LLVM ==="

# Read LLVM hash from triton
LLVM_HASH=$(cat "${REPO_DIR}/triton/cmake/llvm-hash.txt" | tr -d '[:space:]')
echo "Required LLVM hash: ${LLVM_HASH}"

LLVM_DIR="${BASE_DIR}/LLVM_DIR"
LLVM_SRC="${LLVM_DIR}/llvm-project"
LLVM_BUILD="${LLVM_DIR}/build"
export LLVM_PROJECT_BUILD_DIR="${LLVM_BUILD}"

if [ -f "${LLVM_BUILD}/bin/mlir-opt" ]; then
    echo "LLVM already built. Verifying commit..."
    cd "${LLVM_SRC}"
    CURRENT_HASH=$(git rev-parse HEAD 2>/dev/null || echo "unknown")
    if [ "${CURRENT_HASH}" = "${LLVM_HASH}" ]; then
        echo "LLVM at correct commit. Skipping build."
    else
        echo "WARNING: LLVM at ${CURRENT_HASH}, need ${LLVM_HASH}. Rebuilding..."
    fi
    cd "${REPO_DIR}"
else
    mkdir -p "${LLVM_DIR}"

    if [ ! -d "${LLVM_SRC}/.git" ]; then
        echo "Cloning LLVM (shallow)..."
        git clone --depth=1 https://github.com/llvm/llvm-project.git "${LLVM_SRC}"
    fi

    cd "${LLVM_SRC}"
    echo "Fetching required commit ${LLVM_HASH}..."
    git fetch --depth=1 origin "${LLVM_HASH}"
    git checkout "${LLVM_HASH}"

    mkdir -p "${LLVM_BUILD}"
    cd "${LLVM_BUILD}"

    echo "Configuring LLVM with CMake (Ninja)..."
    cmake -G "Ninja" "${LLVM_SRC}/llvm" \
        -DLLVM_ENABLE_PROJECTS="llvm;mlir;lld" \
        -DCMAKE_C_COMPILER=${CC} \
        -DCMAKE_CXX_COMPILER=${CXX} \
        -DCMAKE_ASM_COMPILER=${CC} \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_TARGETS_TO_BUILD="X86;Hexagon" \
        -DCMAKE_BUILD_TYPE="Release" \
        -DLLVM_ENABLE_ASSERTIONS=ON \
        -DLLVM_ENABLE_RTTI=ON \
        -DLLVM_CCACHE_BUILD=ON \
        -DLLVM_ENABLE_EH=ON \
        -DLLVM_BUILD_EXAMPLES=OFF \
        -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
        -DLLVM_DEFAULT_TARGET_TRIPLE=x86_64-unknown-linux-gnu

    echo "Building LLVM (this may take 10-20 minutes)..."
    START_TIME=$(date +%s)
    ninja -j$(nproc)
    END_TIME=$(date +%s)
    echo "LLVM built in $((END_TIME - START_TIME)) seconds."
fi

# ========== Step 3: Python venv ==========
echo ""
echo "=== Step 3: Setting up Python environment ==="

ENV_DIR="${BASE_DIR}/mlir-env"
if [ ! -d "${ENV_DIR}" ]; then
    python3 -m venv "${ENV_DIR}"
fi
source "${ENV_DIR}/bin/activate"
echo "Python: $(python --version)"

pip install --upgrade pip setuptools wheel -q
pip install -r "${REPO_DIR}/ci/requirements.txt" -q 2>&1 | tail -5

# ========== Step 4: Build Triton with Hexagon backend ==========
echo ""
echo "=== Step 4: Building Triton + Hexagon backend ==="

cd "${REPO_DIR}"
export HEXAGON_MLIR_ROOT="${REPO_DIR}"
export TRITON_ROOT="${REPO_DIR}/triton"

PYTHON_VERSION=$(python -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
export TRITON_SHARED_OPT_PATH="${TRITON_ROOT}/build/cmake.linux-x86_64-cpython-${PYTHON_VERSION}/third_party/triton_shared/tools/triton-shared-opt/triton-shared-opt"
export HEXAGON_ARCH_VERSION=75
export TRITON_HOME="${REPO_DIR}"
export TRITON_PLUGIN_DIRS="${REPO_DIR}/triton_shared;${REPO_DIR}/qcom_hexagon_backend"
export PYTHONPATH="${TRITON_ROOT}/python:${PYTHONPATH:-}"

cd "${TRITON_ROOT}"
echo "Building Triton (pip install -e) ..."
START_TIME=$(date +%s)
TRITON_BUILD_WITH_CLANG_LLD=1 \
TRITON_BUILD_WITH_CCACHE=true \
LLVM_INCLUDE_DIRS="${LLVM_BUILD}/include" \
LLVM_LIBRARY_DIR="${LLVM_BUILD}/lib" \
LLVM_SYSPATH="${LLVM_BUILD}" \
pip install -e . --no-build-isolation --verbose 2>&1 | tail -20
END_TIME=$(date +%s)
echo "Triton built in $((END_TIME - START_TIME)) seconds."

cd "${REPO_DIR}"

# ========== Step 5: Verify ==========
echo ""
echo "=== Step 5: Verifying build ==="
python -c "
from triton._C.libtriton import ir, qcom_hexagon_backend
print('SUCCESS: Hexagon backend imported successfully!')
ctx = ir.context()
qcom_hexagon_backend.load_dialects(ctx)
print('SUCCESS: Hexagon dialects loaded!')
" && echo "BUILD VERIFIED" || echo "BUILD FAILED"

echo ""
echo "=============================================="
echo "Build complete. To run e2e experiments:"
echo "  source ${ENV_DIR}/bin/activate"
echo "  cd ${BASE_DIR}/experiments/phase_ordering"
echo "  python run_e2e_ordering.py"
echo "=============================================="
