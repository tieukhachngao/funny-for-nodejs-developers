#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

if [[ ! -x examples/greeter_assembly/build.sh ]]; then
  printf 'examples/greeter_assembly/build.sh must exist and be executable\n' >&2
  exit 1
fi

os=$(uname -s | tr '[:upper:]' '[:lower:]')
arch=$(uname -m)

case "$os/$arch" in
  darwin/x86_64)
    ;;
  *)
    printf 'assembly checks skipped on unsupported target: %s/%s\n' "$os" "$arch"
    exit 0
    ;;
esac

if ! command -v as >/dev/null 2>&1 || ! command -v ld >/dev/null 2>&1 || ! command -v xcrun >/dev/null 2>&1; then
  printf 'assembly checks skipped because as, ld, or xcrun is unavailable\n'
  exit 0
fi

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"; rm -f sqlite3.db' EXIT
sdk_path=$(xcrun --show-sdk-path)
macos_version=$(sw_vers -productVersion | awk -F. '{print $1 "." $2}')

build_asm() {
  local source_file=$1
  local output_file=$2
  local object_file="$output_file.o"

  as -arch x86_64 "$source_file" -o "$object_file"
  ld -e _start -macos_version_min "$macos_version" -syslibroot "$sdk_path" -lSystem "$object_file" -o "$output_file"
}

run_go() {
  local name=$1
  local stdout_file=$2
  local stderr_file=$3

  case "$name" in
    cli_args) go run "examples/$name.go" foo bar >"$stdout_file" 2>"$stderr_file" ;;
    cli_flags) go run "examples/$name.go" -foo bar -qux >"$stdout_file" 2>"$stderr_file" ;;
    db_sqlite3)
      rm -f sqlite3.db
      go run "examples/$name.go" >"$stdout_file" 2>"$stderr_file"
      rm -f sqlite3.db
      ;;
    *) go run "examples/$name.go" >"$stdout_file" 2>"$stderr_file" ;;
  esac
}

compare_examples=(
  array_iteration
  array_sort
  arrays
  async_await
  big_numbers
  buffers
  class
  cli_args
  cli_flags
  comments
  crypto
  db_sqlite3
  default_values
  destructuring
  documentation
  env_vars
  errors
  event_emitter
  exceptions
  exec
  exec_sync
  files
  for_loop
  functions
  generators
  gzip
  ifelse
  iife
  interpolation
  json
  maps
  module_export_usage
  objects
  print
  promises
  regex
  rest
  spread
  stderr
  stdout
  streams
  swapping
  switch
  try_catch
  type_check
  types
  uint8_arrays
  variables
  while_loop
)

while IFS= read -r source_file; do
  name=$(basename "$source_file" .s)
  binary_file="$tmpdir/$name"
  printf 'assembly build %s\n' "$source_file"
  build_asm "$source_file" "$binary_file"
done < <(find examples -maxdepth 1 -name '*.s' | sort)

for name in "${compare_examples[@]}"; do
  binary_file="$tmpdir/$name"
  printf 'assembly compare %s\n' "$name"

  run_go "$name" "$tmpdir/$name.go.out" "$tmpdir/$name.go.err"
  "$binary_file" >"$tmpdir/$name.s.out" 2>"$tmpdir/$name.s.err"

  if ! cmp -s "$tmpdir/$name.go.out" "$tmpdir/$name.s.out"; then
    printf 'assembly stdout mismatch for %s\n' "$name" >&2
    diff -u "$tmpdir/$name.go.out" "$tmpdir/$name.s.out" >&2 || true
    exit 1
  fi

  if ! cmp -s "$tmpdir/$name.go.err" "$tmpdir/$name.s.err"; then
    printf 'assembly stderr mismatch for %s\n' "$name" >&2
    diff -u "$tmpdir/$name.go.err" "$tmpdir/$name.s.err" >&2 || true
    exit 1
  fi
done

output=$(examples/greeter_assembly/build.sh bob)
if [[ $output != 'hello bob' ]]; then
  printf 'assembly greeter output mismatch: %s\n' "$output" >&2
  exit 1
fi

printf 'assembly checks ok\n'
