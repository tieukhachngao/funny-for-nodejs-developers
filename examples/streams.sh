#!/usr/bin/env bash
set -euo pipefail

in_stream=''
in_stream+='foo'
in_stream+='bar'
printf '%s\n' "$in_stream"

out_stream=$'abc\nxyc'
while IFS= read -r line || [[ -n $line ]]; do
  printf 'received: %s\n' "$line"
done <<<"$out_stream"
