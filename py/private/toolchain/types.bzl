"""Constants for toolchain types"""

PY_TOOLCHAIN = "@bazel_tools//tools/python:toolchain_type"
SH_TOOLCHAIN = "@bazel_tools//tools/sh:toolchain_type"

# Toolchain type for the virtual env creation tools.
VENV_TOOLCHAIN = "@aspect_rules_py//py/tools/venv_bin:toolchain_type"
UNPACK_TOOLCHAIN = "@aspect_rules_py//py/tools/unpack_bin:toolchain_type"
