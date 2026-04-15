#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

find examples -maxdepth 1 -name '*.go' -exec basename {} .go \; | sort >"$tmpdir/go.txt"
find examples -maxdepth 1 -name '*.js' -exec basename {} .js \; | sort >"$tmpdir/js.txt"
find examples -maxdepth 1 -name '*.sh' -exec basename {} .sh \; | sort >"$tmpdir/sh.txt"
find examples -maxdepth 1 -name '*.bat' -exec basename {} .bat \; | sort >"$tmpdir/bat.txt"
find examples -maxdepth 1 -name '*.ps1' -exec basename {} .ps1 \; | sort >"$tmpdir/ps1.txt"

go_count=$(wc -l <"$tmpdir/go.txt" | tr -d ' ')
js_count=$(wc -l <"$tmpdir/js.txt" | tr -d ' ')
sh_count=$(wc -l <"$tmpdir/sh.txt" | tr -d ' ')
bat_count=$(wc -l <"$tmpdir/bat.txt" | tr -d ' ')
ps1_count=$(wc -l <"$tmpdir/ps1.txt" | tr -d ' ')

if [[ $go_count != "$js_count" || $go_count != "$sh_count" || $go_count != "$bat_count" || $go_count != "$ps1_count" ]]; then
  printf 'example count mismatch: go=%s js=%s sh=%s bat=%s ps1=%s\n' "$go_count" "$js_count" "$sh_count" "$bat_count" "$ps1_count" >&2
  exit 1
fi

for lang in js sh bat ps1; do
  missing=$(comm -23 "$tmpdir/go.txt" "$tmpdir/$lang.txt")
  extra=$(comm -13 "$tmpdir/go.txt" "$tmpdir/$lang.txt")

  if [[ -n $missing || -n $extra ]]; then
    printf '%s examples do not match Go examples\n' "$lang" >&2
    [[ -z $missing ]] || printf 'missing %s:\n%s\n' "$lang" "$missing" >&2
    [[ -z $extra ]] || printf 'extra %s:\n%s\n' "$lang" "$extra" >&2
    exit 1
  fi
done

if [[ ! -f examples/getter_shellscript/index.sh ]]; then
  printf 'examples/getter_shellscript/index.sh is required\n' >&2
  find examples/getter_shellscript -maxdepth 1 -type f -print >&2
  exit 1
fi

if [[ ! -x examples/getter_shellscript/index.sh ]]; then
  printf 'examples/getter_shellscript/index.sh must be executable\n' >&2
  exit 1
fi

if [[ ! -f examples/getter_batch/index.bat ]]; then
  printf 'examples/getter_batch/index.bat is required\n' >&2
  find examples/getter_batch -maxdepth 1 -type f -print >&2
  exit 1
fi

if [[ ! -f examples/getter_powershell/index.ps1 ]]; then
  printf 'examples/getter_powershell/index.ps1 is required\n' >&2
  find examples/getter_powershell -maxdepth 1 -type f -print >&2
  exit 1
fi

if [[ ! -x examples/greeter_assembly/build.sh ]]; then
  printf 'examples/greeter_assembly/build.sh is required and must be executable\n' >&2
  find examples/greeter_assembly -maxdepth 1 -type f -print >&2
  exit 1
fi

stale_paths="$tmpdir/stale-paths.txt"
grep -En 'getter_shellscript/.*\.sh' README.md examples/getter_shellscript/README.md >"$stale_paths" || true
if grep -v 'getter_shellscript/index\.sh' "$stale_paths" >/dev/null; then
  printf 'stale getter_shellscript script path found:\n' >&2
  grep -v 'getter_shellscript/index\.sh' "$stale_paths" >&2
  exit 1
fi

if ! grep -q '#### Shell Script' README.md; then
  printf 'README.md must include Shell Script examples\n' >&2
  exit 1
fi

while IFS= read -r file; do
  if [[ ! -x $file ]]; then
    printf '%s must be executable\n' "$file" >&2
    exit 1
  fi
done < <(find examples -maxdepth 1 -name '*.sh' | sort)

if find examples -name '*.bash' | grep -q .; then
  printf 'unexpected .bash files found; use .sh for Bash shell examples\n' >&2
  find examples -name '*.bash' -print >&2
  exit 1
fi

printf 'structure ok: %s examples per language for go/js/sh/bat/ps1\n' "$go_count"
