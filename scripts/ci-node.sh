#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

while IFS= read -r file; do
  printf 'node --check %s\n' "$file"
  node --check "$file" >/dev/null
done < <(find examples -name '*.js' | sort)

printf 'node checks ok\n'
