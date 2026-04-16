#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

if ! command -v ruby >/dev/null 2>&1; then
  printf 'ruby checks skipped because ruby is unavailable\n'
  exit 0
fi

while IFS= read -r source_file; do
  printf 'ruby syntax %s\n' "$source_file"
  ruby -c "$source_file" >/dev/null
done < <(find examples -maxdepth 1 -name '*.rb' | sort)

ruby -c examples/greeter_ruby/index.rb >/dev/null
output=$(ruby examples/greeter_ruby/index.rb bob)
if [[ $output != 'hello bob' ]]; then
  printf 'ruby greeter output mismatch: %s\n' "$output" >&2
  exit 1
fi

printf 'ruby checks ok\n'
