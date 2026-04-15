#!/usr/bin/env bash
set -euo pipefail

input=foobar
printf '%s\n' "$input" | sed -E 's/[Ff][Oo][Oo](.*)/qux\1/'

if [[ $input =~ [Oo]{2} ]]; then
  printf 'true\n'
else
  printf 'false\n'
fi

input=111-222-333
grep -Eo '[0-9]+' <<<"$input" | paste -sd' ' - | awk '{print "[" $0 "]"}'
