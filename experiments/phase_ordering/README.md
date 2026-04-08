# E-Graph-Guided Phase Ordering for Hexagon MLIR

Experiments for using equality saturation (e-graphs) to optimize MLIR pass
ordering for the Qualcomm Hexagon NPU backend. The framework discovers optimal
orderings from an 18-pass search space (millions of valid orderings) that are
**2.4--3.1% faster** than the hand-tuned default on real DNN kernels.

## Key Results

| Kernel | Ops | Best vs Default | Search Space | Method |
|--------|-----|----------------|-------------|--------|
| **Flash attention** | 15+ | **3.13%** | 18 passes, millions of orderings | 50 random samples |
| **Elementwise add** | 1 | **2.51%** | 18 passes, millions of orderings | 50 random samples |
| Matmul | 2 | <0.01% | N/A | Ordering irrelevant |

All measurements are end-to-end cycle counts from the Hexagon v75 cycle-accurate
simulator (hexagon-sim + QuRT), compiled through the full MLIR pipeline.

## Directory Structure

```
experiments/phase_ordering/
├── egraph_egglog.py              # E-graph pass ordering via egglog equality saturation
├── egraph_model.py               # E-graph IR model + BFS enumeration
├── pass_dependency_analysis.py   # Dependency DAG extraction & analysis (18 passes, 58 comm. pairs)
├── eval_experiments.py          # Scalability & baseline experiments (synthetic DAGs)
├── run_paper_experiments.py      # *** Main experiment script (extended 18-pass, parallel) ***
├── run_e2e_ordering.py           # Static analysis: e-graph → MLIR compile → IR diff
├── run_e2e_cycles.py             # Legacy cycle count script (4-pass window)
├── run_comprehensive_e2e.py      # Legacy multi-kernel sweep (4-pass window)
├── eval_results/                # Scalability experiment results
├── hw_eval/
│   ├── paper_experiments/        # 4-pass results (v75 + v73, 5 key orderings)
│   ├── extended_experiments/     # *** 18-pass results (50 random orderings, key data) ***
│   │   ├── all_results.json      # All Pcycles measurements
│   │   ├── analysis.json         # Cost model analysis
│   │   ├── cost_model_*.json     # Derived cost model weights per kernel
│   │   └── EXPERIMENT_REPORT.md  # Summary
│   ├── e2e_cycles/               # Legacy single-kernel cycle counts
│   └── comprehensive_e2e/        # Legacy multi-kernel results
└── TASK_REPORT.md                # Implementation log
```

## How It Works

### 1. Pass Dependency DAG

The Hexagon `LinalgToLLVMPass` pipeline has 18 optimization passes across
Phases 2-4, connected by a dependency DAG with 58 commutative pairs (38%).
Passes connected by dependencies must maintain their order; all other pairs
can be freely reordered.

```
Phase 2 (named linalg):  MatmulToHexKL, ConvTiling, ConvertLayout,
                          ScheduleMatmulForHVX → LinalgGeneralize → HexagonRVO
Phase 3 (generic linalg): HexagonFusion, HexagonSlicing, VTCMTiling,
                           FormVirtualThreads, DecomposeTensorConcat
Phase 4 (loops/vectors):  HexagonTiling → SmallExponentToMultiply,
                           HoistScalarOps → LICM → HexagonVectorization → AddFastMath
```

### 2. E-Graph Enumeration

egglog encodes each commutativity as a rewrite rule. Saturation discovers
all equivalent orderings in 0.27s (for the 16-pass core window).

### 3. ILP/SA Extraction

Given a cost model (per-pass weights), ILP extraction finds the provably
optimal ordering. For non-linear cost models, simulated annealing (SA)
searches within the e-graph's proven-equivalent space.

### 4. Extended `phaseOrdering` Option

The production `LinalgToLLVMPass` accepts a `--phase-ordering` flag with a
comma-separated ordering of all 18 passes:

```bash
--phase-ordering="SmallExponentToMultiply,ConvertLayout,ScheduleMatmulForHVX,LinalgGeneralize,VTCMTiling,HexagonFusion,HexagonSlicing,HexagonTiling,HoistScalarOps,LICM,HexagonVectorization,AddFastMath"
```

Unlisted passes are appended in default order. Empty string = default pipeline.

## Prerequisites

| Dependency | Version | Purpose |
|-----------|---------|---------|
| Python | 3.12 | Runtime |
| clang/clang++ | 18+ | Build LLVM and Triton |
| cmake | 3.28+ | Build system |
| ninja | 1.11+ | Parallel build |
| Hexagon SDK | 6.5.0.0 | Hexagon compiler, simulator, runtime |
| Hexagon Tools | 19.0.07 | hexagon-clang, hexagon-sim |

## Quick Start

### E-graph experiments only (no build required)

```bash
python3.12 -m venv venv && source venv/bin/activate
pip install numpy scipy pandas matplotlib networkx egglog

cd experiments/phase_ordering
python pass_dependency_analysis.py   # DAG analysis
python eval_experiments.py          # Scalability experiments
```

### Full end-to-end experiments (requires Hexagon SDK + build)

See the **Full Build** section below, then:

```bash
# Set up environment
source $PROJECT_ROOT/mlir-env/bin/activate
export HEXAGON_SDK_ROOT=$PROJECT_ROOT/Hexagon_SDK/6.5.0.0
export HEXAGON_TOOLS=$HEXAGON_SDK_ROOT/tools/HEXAGON_Tools/19.0.07/Tools
export HEXAGON_ARCH_VERSION=75
export HEXAGON_MLIR_ROOT=$PROJECT_ROOT/hexagon-mlir
export HEXKL_ROOT=$PROJECT_ROOT/HEXKL_DIR/hexkl_addon
export RUN_ON_SIM=1
TRITON_BUILD=$HEXAGON_MLIR_ROOT/triton/build/cmake.linux-x86_64-cpython-3.12
export PATH="$TRITON_BUILD/third_party/qcom_hexagon_backend/bin:$PATH"
export HEXAGON_RUNTIME_LIBS_DIR="$TRITON_BUILD/third_party/qcom_hexagon_backend/bin/runtime"
export PYTHONPATH="$HEXAGON_MLIR_ROOT/triton/python:${PYTHONPATH:-}"

cd $PROJECT_ROOT/experiments/phase_ordering

# Extended 18-pass experiments (recommended — produces the key results)
# 50 random orderings + default, parallel simulation
python run_paper_experiments.py \
    --kernels add_2d_kernel hexkl_attention \
    --extended 50 --parallel 50 --arch 75

# Legacy 4-pass experiments (24 permutations of Phase 3 only)
python run_paper_experiments.py --kernels add_2d_kernel --all-perms --parallel 24
```

### Simulation times

| Kernel | Sim time / ordering | 50 orderings (parallel) |
|--------|--------------------|-----------------------|
| add_2d_kernel | ~3 seconds | ~4 seconds |
| hexkl_attention | ~55 minutes | ~55 minutes |
| conv_tiling | >1 hour (timeouts) | Not recommended |

## `run_paper_experiments.py` Usage

The main experiment script. Supports the extended 18-pass window, parallel
simulation, multiple architectures, and incremental results.

```bash
# Extended 18-pass: N random valid orderings + default
python run_paper_experiments.py --extended 50 --parallel 50

# Legacy 4-pass: all 24 permutations
python run_paper_experiments.py --all-perms --parallel 24

# Specific kernels
python run_paper_experiments.py --kernels hexkl_attention --extended 100 --parallel 100

# Multiple architectures
python run_paper_experiments.py --arch 75 73 --extended 50 --parallel 50

# Resume interrupted experiment
python run_paper_experiments.py --extended 50 --parallel 50 --resume

# Custom output directory
python run_paper_experiments.py --extended 50 --output-dir my_results/
```

**Flags:**

| Flag | Description |
|------|-------------|
| `--extended N` | Sample N random valid orderings from the 18-pass DAG (+ default) |
| `--all-perms` | All 24 permutations of Phase 3 only (legacy 4-pass mode) |
| `--parallel N` | Run N simulations concurrently (default: 1) |
| `--kernels K [K...]` | Test specific kernels (default: all) |
| `--arch V [V...]` | Architecture versions (default: 75) |
| `--resume` | Skip orderings with existing results |
| `--seed S` | Random seed for extended sampling (default: 42) |

## Key Code Changes

### Extended `phaseOrdering` (18-pass window)

| File | Change |
|------|--------|
| `LinalgToLLVMPass.cpp` | All 18 Phases 2-4 passes wrapped in lambda dispatchers with a `std::map` dispatch table. Accepts comma-separated ordering of any/all passes. |
| `Passes.td` | Updated `phaseOrdering` option docs to list all 18 valid pass names |

### Parallel experiment infrastructure

| File | Change |
|------|--------|
| `run_paper_experiments.py` | `--extended`, `--parallel` flags. `ProcessPoolExecutor` for concurrent sims. `config_to_dict()` for picklable sim configs. Random valid ordering sampler via Kahn's algorithm. |

## Measured Results

### Extended 18-Pass Window (v75, 51 orderings each)

**add_2d_kernel (elementwise f32 add, bandwidth-bound):**

| | Pcycles | vs Default |
|-|---------|-----------|
| **Best (rand_046)** | **3,306,745** | **-2.51%** |
| Default | 3,389,614 | baseline |
| Worst (rand_008) | 3,392,206 | +0.08% |

**hexkl_attention (flash attention f16, 15+ ops, mixed):**

| | Pcycles | vs Default |
|-|---------|-----------|
| **Best (rand_017)** | **3,287,851** | **-3.13%** |
| Default | 3,390,892 | baseline |
| Worst (rand_028) | 3,394,846 | +0.12% |

### Cost Model Analysis

A pairwise ordering model (does "pass A before pass B" correlate with fewer
cycles?) achieves:
- **add_2d**: Kendall's τ = +0.359, predicted ordering within 0.00% of actual best
- **attention**: predicted ordering within 0.03% of actual best, 3.01% better than default

Key pairwise rules discovered:
- `VTCMTiling → FormVirtualThreads` = faster (add_2d, r=-0.37)
- `DecomposeTensorConcat` late = faster (both kernels, r≈-0.30)
- `SmallExponentToMultiply` early = faster (attention, r=-0.26)

## Full Build

### Step 1: Environment variables

```bash
export PROJECT_ROOT=/path/to/qualcomm-mlir
export HEXAGON_SDK_ROOT=$PROJECT_ROOT/Hexagon_SDK/6.5.0.0
export HEXAGON_TOOLS=$HEXAGON_SDK_ROOT/tools/HEXAGON_Tools/19.0.07/Tools
export HEXKL_ROOT=$PROJECT_ROOT/HEXKL_DIR/hexkl_addon
export HEXAGON_ARCH_VERSION=75
```

### Step 2: Initialize git submodules

```bash
cd $PROJECT_ROOT/hexagon-mlir
git submodule add --force https://github.com/triton-lang/triton.git triton
cd triton && git checkout e44bd1c83c1c3e8deac7c4f02683cfb3cc395c8b
git apply ../third_party_software/patches/triton/third_party_triton.patch && cd ..

git submodule add --force https://github.com/microsoft/triton-shared triton_shared
cd triton_shared && git checkout 2b728ad97bc02af821a0805b09075838911d4c19
git apply ../third_party_software/patches/triton_shared/max_with_nan_propagation.patch
git apply ../third_party_software/patches/triton_shared/tt_shared_split_dim.patch && cd ..
```

### Step 3: Build LLVM

```bash
LLVM_HASH=$(cat $PROJECT_ROOT/hexagon-mlir/triton/cmake/llvm-hash.txt | tr -d '[:space:]')
LLVM_DIR=$PROJECT_ROOT/LLVM_DIR && LLVM_BUILD=$LLVM_DIR/build

git clone --depth=1 https://github.com/llvm/llvm-project.git $LLVM_DIR/llvm-project
cd $LLVM_DIR/llvm-project && git fetch --depth=1 origin $LLVM_HASH && git checkout $LLVM_HASH

mkdir -p $LLVM_BUILD && cd $LLVM_BUILD
cmake -G Ninja $LLVM_DIR/llvm-project/llvm \
  -DLLVM_ENABLE_PROJECTS="llvm;mlir;lld" \
  -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ \
  -DLLVM_TARGETS_TO_BUILD="AMDGPU;NVPTX;X86;Hexagon" \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ENABLE_RTTI=ON \
  -DLLVM_CCACHE_BUILD=ON -DLLVM_ENABLE_EH=ON
ninja -j$(nproc)
```

### Step 4: Build Triton with Hexagon backend

```bash
source $PROJECT_ROOT/mlir-env/bin/activate
cd $PROJECT_ROOT/hexagon-mlir/triton

export HEXAGON_MLIR_ROOT=$PROJECT_ROOT/hexagon-mlir
export TRITON_HOME=$PROJECT_ROOT/hexagon-mlir
export TRITON_PLUGIN_DIRS="$HEXAGON_MLIR_ROOT/triton_shared;$HEXAGON_MLIR_ROOT/qcom_hexagon_backend"
export LLVM_SYSPATH=$PROJECT_ROOT/LLVM_DIR/build

TRITON_BUILD_WITH_CLANG_LLD=1 TRITON_BUILD_WITH_CCACHE=true \
LLVM_INCLUDE_DIRS="$LLVM_SYSPATH/include" LLVM_LIBRARY_DIR="$LLVM_SYSPATH/lib" \
LLVM_SYSPATH="$LLVM_SYSPATH" pip install -e . --no-build-isolation
```

> **Note:** If cmake finds a system MLIR and fails with `LLVMSupportLSP` error,
> add `-DMLIR_DIR=$LLVM_SYSPATH/lib/cmake/mlir -DLLD_DIR=$LLVM_SYSPATH/lib/cmake/lld`
> or run cmake manually (see `build_for_e2e.sh`).

## Troubleshooting

**`unordered_map::at` during compilation:** Use `HexagonOptions()` defaults, not
a hardcoded subset.

**`torch-mlir not found`:** Use Python 3.12, not 3.13.

**`LLVMNVPTXCodeGen not found`:** Rebuild LLVM with `AMDGPU;NVPTX;X86;Hexagon` targets.

**`ANDROID_HOST variable needed`:** Set `RUN_ON_SIM=1` for simulator mode.

**Simulator takes hours:** Attention kernel: ~55 min/ordering. Use `--parallel N`
to run N simulations concurrently. add_2d is fast (~3s/ordering).

**`LLVMSupportLSP` cmake error:** System MLIR conflicts with project MLIR. Set
`-DMLIR_DIR=/path/to/LLVM_DIR/build/lib/cmake/mlir` explicitly.
