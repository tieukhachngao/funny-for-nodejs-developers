#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

while IFS= read -r file; do
  printf 'bash -n %s\n' "$file"
  bash -n "$file"
done < <(find examples -name '*.sh' | sort)

smoke_tests=(
  array_iteration
  array_sort
  arrays
  big_numbers
  buffers
  class
  cli_args
  cli_flags
  comments
  crypto
  default_values
  destructuring
  documentation
  env_vars
  errors
  event_emitter
  example_test
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
  logging
  maps
  module_export
  module_export_usage
  module_import
  objects
  print
  promises
  regex
  rest
  spread
  stack_trace
  stderr
  stdout
  streams
  swapping
  switch
  timeout
  try_catch
  type_check
  types
  uint8_arrays
  variables
  while_loop
)

for name in "${smoke_tests[@]}"; do
  file="examples/$name.sh"
  printf 'bash %s\n' "$file"
  if command -v timeout >/dev/null 2>&1; then
    timeout 15s bash "$file" >/tmp/"$name".out 2>/tmp/"$name".err
  else
    bash "$file" >/tmp/"$name".out 2>/tmp/"$name".err
  fi
done

printf 'shell checks ok\n'
