#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

find examples -maxdepth 1 -name '*.go' -exec basename {} .go \; | sort >"$tmpdir/go.txt"
find examples -maxdepth 1 -name '*.bat' -exec basename {} .bat \; | sort >"$tmpdir/bat.txt"

missing=$(comm -23 "$tmpdir/go.txt" "$tmpdir/bat.txt")
extra=$(comm -13 "$tmpdir/go.txt" "$tmpdir/bat.txt")

if [[ -n $missing || -n $extra ]]; then
  printf 'Batch examples do not match Go examples\n' >&2
  [[ -z $missing ]] || printf 'missing bat:\n%s\n' "$missing" >&2
  [[ -z $extra ]] || printf 'extra bat:\n%s\n' "$extra" >&2
  exit 1
fi

while IFS= read -r file; do
  if ! grep -q '@echo off' "$file"; then
    printf '%s must be a Batch file\n' "$file" >&2
    exit 1
  fi

  if grep -Eiq '(^|[[:space:]])(bash|pwsh|powershell)([[:space:]]|$)|\.(sh|ps1)([[:space:]]|$|")' "$file"; then
    printf '%s must be native Batch and must not call Bash, PowerShell, .sh, or .ps1 files\n' "$file" >&2
    exit 1
  fi
done < <(find examples -maxdepth 1 -name '*.bat' | sort)

printf 'batch checks ok\n'
