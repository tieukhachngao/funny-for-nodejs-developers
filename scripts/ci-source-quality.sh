#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

bad_patterns=(
  'Generated C example'
  'Generated C\+\+ example'
  'Generated Ruby example'
  'writes the same stdout/stderr bytes'
  'static const unsigned char stdout_bytes'
  'static constexpr unsigned char stdout_bytes'
  'STDOUT\.write\(\[[0-9, ]*\]\.pack'
)

for pattern in "${bad_patterns[@]}"; do
  if rg -n "$pattern" examples -g '*.c' -g '*.cpp' -g '*.rb' >/tmp/source-quality-matches.txt; then
    printf 'generated output replay pattern found: %s\n' "$pattern" >&2
    cat /tmp/source-quality-matches.txt >&2
    rm -f /tmp/source-quality-matches.txt
    exit 1
  fi
done

rm -f /tmp/source-quality-matches.txt
printf 'source quality checks ok\n'
