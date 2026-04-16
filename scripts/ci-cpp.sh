#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

if ! command -v c++ >/dev/null 2>&1; then
  printf 'c++ checks skipped because c++ is unavailable\n'
  exit 0
fi

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

build_cpp() {
  local source_file=$1
  local output_file=$2

  c++ -std=c++17 -Wall -Wextra -Werror "$source_file" -o "$output_file"
}

while IFS= read -r source_file; do
  name=$(basename "$source_file" .cpp)
  binary_file="$tmpdir/$name"
  printf 'c++ build %s\n' "$source_file"
  build_cpp "$source_file" "$binary_file"
done < <(find examples -maxdepth 1 -name '*.cpp' | sort)

build_cpp examples/greeter_cpp/index.cpp "$tmpdir/greeter_cpp"
output=$("$tmpdir/greeter_cpp" bob)
if [[ $output != 'hello bob' ]]; then
  printf 'c++ greeter output mismatch: %s\n' "$output" >&2
  exit 1
fi

printf 'c++ checks ok\n'
