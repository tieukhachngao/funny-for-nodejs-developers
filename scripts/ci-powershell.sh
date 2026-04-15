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
fi

printf 'powershell checks ok\n'
