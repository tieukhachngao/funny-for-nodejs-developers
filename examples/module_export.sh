#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
# shellcheck source=getter_shellscript/index.sh
source "$script_dir/getter_shellscript/index.sh"
