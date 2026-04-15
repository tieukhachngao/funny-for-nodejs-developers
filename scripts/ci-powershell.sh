#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

find examples -maxdepth 1 -name '*.go' -exec basename {} .go \; | sort >"$tmpdir/go.txt"
find examples -maxdepth 1 -name '*.ps1' -exec basename {} .ps1 \; | sort >"$tmpdir/ps1.txt"

missing=$(comm -23 "$tmpdir/go.txt" "$tmpdir/ps1.txt")
extra=$(comm -13 "$tmpdir/go.txt" "$tmpdir/ps1.txt")

if [[ -n $missing || -n $extra ]]; then
  printf 'PowerShell examples do not match Go examples\n' >&2
  [[ -z $missing ]] || printf 'missing ps1:\n%s\n' "$missing" >&2
  [[ -z $extra ]] || printf 'extra ps1:\n%s\n' "$extra" >&2
  exit 1
fi

if [[ ! -f examples/getter_powershell/index.ps1 ]]; then
  printf 'examples/getter_powershell/index.ps1 is required\n' >&2
  exit 1
fi

while IFS= read -r file; do
  if ! grep -q 'Set-StrictMode' "$file"; then
    printf '%s must be a PowerShell file\n' "$file" >&2
    exit 1
  fi

  if grep -Eiq '(^|[[:space:]])bash([[:space:]]|$)|\.sh([[:space:]]|$|")' "$file"; then
    printf '%s must be native PowerShell and must not call Bash or .sh files\n' "$file" >&2
    exit 1
  fi
done < <(find examples -maxdepth 1 -name '*.ps1' | sort)

if command -v pwsh >/dev/null 2>&1; then
  while IFS= read -r file; do
    printf 'pwsh parse %s\n' "$file"
    pwsh -NoLogo -NoProfile -Command "\$errors = \$null; [System.Management.Automation.Language.Parser]::ParseFile('$file', [ref]\$null, [ref]\$errors) > \$null; if (\$errors.Count -gt 0) { \$errors | ForEach-Object { Write-Error \$_ }; exit 1 }"
  done < <(find examples -name '*.ps1' | sort)

  smoke_tests=(
    array_iteration
    array_sort
    arrays
    async_await
    benchmark_test
    big_numbers
    buffers
    class
    cli_args
    cli_flags
    comments
    crypto
    datetime
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
    interval
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
    file="examples/$name.ps1"
    printf 'pwsh run %s\n' "$file"
    pwsh -NoLogo -NoProfile -File "$file" >/tmp/"$name".pwsh.out 2>/tmp/"$name".pwsh.err
  done
fi

printf 'powershell checks ok\n'
