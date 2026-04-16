#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"; rm -f sqlite3.db' EXIT

build_c_example() {
  local name=$1
  local output_file=$2

  if ! command -v cc >/dev/null 2>&1; then
    printf 'cc is required for output comparison of %s.c\n' "$name" >&2
    exit 1
  fi

  cc -std=c11 -Wall -Wextra -Werror "examples/$name.c" -o "$output_file"
}

build_cpp_example() {
  local name=$1
  local output_file=$2

  if ! command -v c++ >/dev/null 2>&1; then
    printf 'c++ is required for output comparison of %s.cpp\n' "$name" >&2
    exit 1
  fi

  c++ -std=c++17 -Wall -Wextra -Werror "examples/$name.cpp" -o "$output_file"
}

run_example() {
  local name=$1
  local lang=$2
  local stdout_file=$3
  local stderr_file=$4
  local file="examples/$name.$lang"

  case "$name:$lang" in
    cli_args:go) go run "$file" foo bar >"$stdout_file" 2>"$stderr_file" ;;
    cli_args:js) node "$file" foo bar >"$stdout_file" 2>"$stderr_file" ;;
    cli_args:c)
      build_c_example "$name" "$tmpdir/$name/$lang.bin"
      "$tmpdir/$name/$lang.bin" foo bar >"$stdout_file" 2>"$stderr_file"
      ;;
    cli_args:cpp)
      build_cpp_example "$name" "$tmpdir/$name/$lang.bin"
      "$tmpdir/$name/$lang.bin" foo bar >"$stdout_file" 2>"$stderr_file"
      ;;
    cli_args:sh) bash "$file" foo bar >"$stdout_file" 2>"$stderr_file" ;;
    cli_args:ps1) pwsh -NoLogo -NoProfile -File "$file" foo bar >"$stdout_file" 2>"$stderr_file" ;;

    cli_flags:go) go run "$file" -foo bar -qux >"$stdout_file" 2>"$stderr_file" ;;
    cli_flags:js) node "$file" --foo bar --qux >"$stdout_file" 2>"$stderr_file" ;;
    cli_flags:c)
      build_c_example "$name" "$tmpdir/$name/$lang.bin"
      "$tmpdir/$name/$lang.bin" --foo bar --qux >"$stdout_file" 2>"$stderr_file"
      ;;
    cli_flags:cpp)
      build_cpp_example "$name" "$tmpdir/$name/$lang.bin"
      "$tmpdir/$name/$lang.bin" --foo bar --qux >"$stdout_file" 2>"$stderr_file"
      ;;
    cli_flags:sh) bash "$file" --foo bar --qux >"$stdout_file" 2>"$stderr_file" ;;
    cli_flags:ps1) pwsh -NoLogo -NoProfile -File "$file" -foo bar -qux >"$stdout_file" 2>"$stderr_file" ;;

    db_sqlite3:*)
      if ! command -v sqlite3 >/dev/null 2>&1; then
        printf 'sqlite3 is required for output comparison of %s\n' "$name" >&2
        exit 1
      fi
      rm -f sqlite3.db
      case "$lang" in
        go) go run "$file" >"$stdout_file" 2>"$stderr_file" ;;
        js) node "$file" >"$stdout_file" 2>"$stderr_file" ;;
        c)
          build_c_example "$name" "$tmpdir/$name/$lang.bin"
          "$tmpdir/$name/$lang.bin" >"$stdout_file" 2>"$stderr_file"
          ;;
        cpp)
          build_cpp_example "$name" "$tmpdir/$name/$lang.bin"
          "$tmpdir/$name/$lang.bin" >"$stdout_file" 2>"$stderr_file"
          ;;
        sh) bash "$file" >"$stdout_file" 2>"$stderr_file" ;;
        ps1) pwsh -NoLogo -NoProfile -File "$file" >"$stdout_file" 2>"$stderr_file" ;;
      esac
      rm -f sqlite3.db
      ;;

    *:go) go run "$file" >"$stdout_file" 2>"$stderr_file" ;;
    *:js) node "$file" >"$stdout_file" 2>"$stderr_file" ;;
    *:c)
      build_c_example "$name" "$tmpdir/$name/$lang.bin"
      "$tmpdir/$name/$lang.bin" >"$stdout_file" 2>"$stderr_file"
      ;;
    *:cpp)
      build_cpp_example "$name" "$tmpdir/$name/$lang.bin"
      "$tmpdir/$name/$lang.bin" >"$stdout_file" 2>"$stderr_file"
      ;;
    *:sh) bash "$file" >"$stdout_file" 2>"$stderr_file" ;;
    *:ps1) pwsh -NoLogo -NoProfile -File "$file" >"$stdout_file" 2>"$stderr_file" ;;
  esac
}

compare_file() {
  local name=$1
  local lang=$2
  local stream=$3
  local expected=$4
  local actual=$5

  if ! cmp -s "$expected" "$actual"; then
    printf '%s %s %s differs from Go output\n' "$name" "$lang" "$stream" >&2
    diff -u "$expected" "$actual" >&2 || true
    exit 1
  fi
}

examples=(
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

for name in "${examples[@]}"; do
  mkdir -p "$tmpdir/$name"
  printf 'compare outputs %s\n' "$name"

  run_example "$name" go "$tmpdir/$name/go.out" "$tmpdir/$name/go.err"

  for lang in js c cpp sh ps1; do
    run_example "$name" "$lang" "$tmpdir/$name/$lang.out" "$tmpdir/$name/$lang.err"
    compare_file "$name" "$lang" stdout "$tmpdir/$name/go.out" "$tmpdir/$name/$lang.out"
    compare_file "$name" "$lang" stderr "$tmpdir/$name/go.err" "$tmpdir/$name/$lang.err"
  done
done

printf 'output comparisons ok\n'
