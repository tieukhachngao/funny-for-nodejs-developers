#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)

"$root_dir/scripts/ci-structure.sh"
"$root_dir/scripts/ci-go.sh"
"$root_dir/scripts/ci-node.sh"
"$root_dir/scripts/ci-c.sh"
"$root_dir/scripts/ci-cpp.sh"
"$root_dir/scripts/ci-ruby.sh"
"$root_dir/scripts/ci-shell.sh"
"$root_dir/scripts/ci-batch.sh"
"$root_dir/scripts/ci-powershell.sh"
"$root_dir/scripts/ci-assembly.sh"
"$root_dir/scripts/ci-output.sh"
