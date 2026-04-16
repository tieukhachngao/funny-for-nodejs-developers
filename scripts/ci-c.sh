#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

if ! command -v cc >/dev/null 2>&1; then
  printf 'c checks skipped because cc is unavailable\n'
  exit 0
fi

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

build_c() {
  local source_file=$1
  local output_file=$2

  cc -std=c11 -Wall -Wextra -Werror "$source_file" -o "$output_file"
}

while IFS= read -r source_file; do
  name=$(basename "$source_file" .c)
  binary_file="$tmpdir/$name"
  printf 'c build %s\n' "$source_file"
  build_c "$source_file" "$binary_file"
done < <(find examples -maxdepth 1 -name '*.c' | sort)

build_c examples/greeter_c/index.c "$tmpdir/greeter_c"
output=$("$tmpdir/greeter_c" bob)
if [[ $output != 'hello bob' ]]; then
  printf 'c greeter output mismatch: %s\n' "$output" >&2
  exit 1
fi

printf 'c checks ok\n'
