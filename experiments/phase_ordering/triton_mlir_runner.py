#!/usr/bin/env python3
"""Generic runner: loads a Triton test, monkey-patches to capture MLIR, runs one test.

Usage: python triton_mlir_runner.py config.json

Strategy: Use importlib to properly import test modules, avoiding the __init__.py
shadow by temporarily renaming it.
"""

import os
import sys
import re
import json
import shutil
import traceback
import tempfile
import importlib
import importlib.util

# Load config
config_path = sys.argv[1]
with open(config_path) as f:
    config = json.load(f)

test_file = config["test_file"]
test_func = config["test_func"]
params = config["params"]
kernel_name = config["kernel_name"]
output_dir = config["output_dir"]
repo_root = config["repo_root"]

# Use a unique cache dir to avoid Triton JIT cache hits
os.environ["TRITON_CACHE_DIR"] = tempfile.mkdtemp(prefix="triton_cache_")

# Clean sys.path to avoid the test/python/triton shadow
sys.path = [p for p in sys.path if "test/python/triton" not in p]

import torch
import triton
import triton.language as tl
from triton.backends.qcom_hexagon_backend.driver import HexagonDriver
from triton.backends.qcom_hexagon_backend import compiler as triton_compiler

triton.runtime.driver.set_active(HexagonDriver())

# Monkey-patch to capture the ttsharedir MLIR
_captured_mlir = []
_original_ttir_to_ttsharedir = triton_compiler.ttir_to_ttsharedir

def _patched_ttir_to_ttsharedir(mod):
    result = _original_ttir_to_ttsharedir(mod)
    _captured_mlir.append(result)
    return result

triton_compiler.ttir_to_ttsharedir = _patched_ttir_to_ttsharedir

# Temporarily rename the shadow __init__.py
shadow_init = os.path.join(repo_root, "test/python/triton/__init__.py")
shadow_init_bak = shadow_init + ".bak"
renamed = False
if os.path.exists(shadow_init):
    shutil.move(shadow_init, shadow_init_bak)
    renamed = True

# Also clear any cached test.python.triton from sys.modules
keys_to_remove = [k for k in sys.modules if "test.python" in k or k.startswith("test_")]
for k in keys_to_remove:
    del sys.modules[k]

try:
    # Add test/python to path so relative imports (from .. import ...) work
    test_python_dir = os.path.join(repo_root, "test/python")
    if test_python_dir not in sys.path:
        sys.path.insert(0, test_python_dir)

    # Import the test module using importlib
    spec = importlib.util.spec_from_file_location(
        f"triton_test_{kernel_name}",
        test_file,
        submodule_search_locations=[]
    )

    # For files using "from .. import parameterize_func_name", we need them
    # as part of a package. Let's load them differently.
    # Read source and fix relative imports
    with open(test_file) as f:
        source = f.read()

    # Fix relative imports
    source = source.replace("from .. import parameterize_func_name",
                            "from utils import parameterize_func_name")

    # Remove pytest parametrize decorators (handle multiline with paren counting)
    def _remove_param_decs(src):
        lines = src.split('\n')
        out = []
        i = 0
        while i < len(lines):
            if '@pytest.mark.parametrize' in lines[i]:
                pc = lines[i].count('(') - lines[i].count(')')
                while pc > 0 and i + 1 < len(lines):
                    i += 1
                    pc += lines[i].count('(') - lines[i].count(')')
                i += 1
                continue
            out.append(lines[i])
            i += 1
        return '\n'.join(out)
    source = _remove_param_decs(source)
    source = source.replace("import pytest", "")

    # Write fixed source to a temp file and import it
    fixed_path = os.path.join(output_dir, f"fixed_{os.path.basename(test_file)}")
    with open(fixed_path, "w") as f:
        f.write(source)

    spec = importlib.util.spec_from_file_location(
        f"triton_test_{kernel_name}",
        fixed_path,
    )
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)

    # Resolve torch dtype strings in params
    resolved_params = {}
    for k, v in params.items():
        if isinstance(v, str) and v.startswith("torch."):
            resolved_params[k] = getattr(torch, v.split(".", 1)[1])
        else:
            resolved_params[k] = v

    # Call the test function
    func = getattr(mod, test_func, None)
    if func is None:
        avail = [n for n in dir(mod) if n.startswith("test_")]
        result = {"kernel_name": kernel_name, "mlir_files": [],
                  "error": f"Function {test_func} not found. Available: {avail}"}
        with open(os.path.join(output_dir, "result.json"), "w") as f:
            json.dump(result, f)
        sys.exit(1)

    try:
        func(**resolved_params)
    except AssertionError:
        pass  # Expected when RUN_ON_SIM=0
    except Exception as e:
        err_str = str(e)
        if "allclose" not in err_str and "ANDROID_HOST" not in err_str:
            print(f"Test execution error: {e}", file=sys.stderr)
            traceback.print_exc()

finally:
    # Restore the shadow __init__.py
    if renamed and os.path.exists(shadow_init_bak):
        shutil.move(shadow_init_bak, shadow_init)

# Save captured MLIR
result = {"kernel_name": kernel_name, "mlir_files": [], "error": None}
for i, mlir in enumerate(_captured_mlir):
    mlir_path = os.path.join(output_dir, f"{kernel_name}_{i}.mlir")
    with open(mlir_path, "w") as f:
        f.write(mlir)
    result["mlir_files"].append(mlir_path)
    print(f"Captured MLIR {i}: {len(mlir)} chars -> {mlir_path}")

if not _captured_mlir:
    result["error"] = "No MLIR captured"
    print("WARNING: No MLIR was captured!", file=sys.stderr)

with open(os.path.join(output_dir, "result.json"), "w") as f:
    json.dump(result, f)

if _captured_mlir:
    print(f"SUCCESS: Captured {len(_captured_mlir)} MLIR file(s)")
else:
    sys.exit(1)
