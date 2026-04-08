# eQual: E-Graph-Guided Phase Ordering for MLIR Backends

**eQual** uses equality saturation (e-graphs) to explore the space of valid compiler pass orderings in MLIR backends, finding orderings that outperform hand-tuned defaults.

## Key Idea

Production MLIR backends for accelerators (NPUs, DSPs) define dozens of optimization passes. The order in which these passes execute affects generated code quality, but the optimal order depends on the workload. eQual formulates pass ordering as equality saturation over a dependency DAG, discovering millions of valid orderings efficiently, then uses a hardware-calibrated pairwise cost model to select the best ordering per workload.

## Results

On real DNN kernels compiled through a full Hexagon NPU MLIR pipeline and measured on a cycle-accurate simulator:
- **3.1% faster** on flash attention vs. hand-tuned default
- **2.5% faster** on elementwise operations vs. hand-tuned default
- Pairwise cost model finds near-optimal orderings from just 50 random samples

## Project Structure

```
experiments/phase_ordering/
  egraph_model.py           # E-graph model for pass ordering (egglog + BFS)
  egraph_egglog.py          # Egglog equality saturation scripts
  pass_dependency_analysis.py  # Dependency DAG extraction
  pairwise_cost_model.py    # Pairwise interaction cost model
  cross_workload_model.py   # Cross-workload transferability analysis
  static_features.py        # Static IR feature extraction
  triton_mlir_runner.py     # MLIR compilation + Hexagon simulation runner
  extract_triton_mlir.py    # Extract MLIR IR from Triton kernels
  generate_workloads.py     # Workload generation
  run_e2e_ordering.py       # End-to-end ordering experiments
  run_e2e_cycles.py         # Cycle-accurate evaluation
  run_comprehensive_e2e.py  # Comprehensive experiment suite
  run_paper_experiments.py  # Paper experiment reproduction
  eval_experiments.py        # Scalability & baseline experiments
  hw_eval/                  # Hardware evaluation results
  figures/                  # Generated figures
  eval_figures/              # Evaluation figures
build_for_e2e.sh            # Build script for LLVM + Triton + Hexagon backend
```

## Prerequisites

- Qualcomm Hexagon SDK 6.5
- LLVM/MLIR (built from specific commit; see `build_for_e2e.sh`)
- Python 3.11+ with `egglog`, `matplotlib`, `numpy`, `pandas`

## Quick Start

```bash
# 1. Build the toolchain (LLVM + Triton + Hexagon backend)
./build_for_e2e.sh

# 2. Activate the environment
source mlir-env/bin/activate

# 3. Run the e-graph pass ordering experiments
cd experiments/phase_ordering
python egraph_model.py            # E-graph exploration
python run_paper_experiments.py   # Full paper experiments
```

## Citation

If you use eQual in your research, please cite:

```bibtex
@inproceedings{equal2026,
  title={E-Graph-Guided Phase Ordering for Domain-Specific MLIR Backends},
  author={Allen Jin},
  year={2026}
}
```

## License

See [LICENSE](LICENSE) for details.
