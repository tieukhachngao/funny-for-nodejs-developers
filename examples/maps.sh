#!/usr/bin/env bash
set -euo pipefail

map1_foo=bar

if [[ ${map1_foo+x} ]]; then
  printf 'true\n'
  printf '%s\n' "$map1_foo"
fi

unset map1_foo
if [[ ${map1_foo+x} ]]; then
  printf 'true\n'
  printf '%s\n' "$map1_foo"
else
  printf 'false\n'
  printf '\n'
fi

for entry in 'foo 100' 'bar 200' 'baz 300'; do
  printf '%s\n' "$entry"
done
