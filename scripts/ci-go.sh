#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

go mod download

while IFS= read -r file; do
  printf 'go test %s\n' "$file"
  go test "$file"
done < <(find examples -maxdepth 1 -name '*.go' | sort)

(
  cd examples/greeter_go
  go test ./...
)

printf 'go checks ok\n'
