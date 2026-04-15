#!/usr/bin/env bash
set -euo pipefail

array=(1 2)

if ((${#array[@]})); then
  printf 'array exists\n'
fi

if ((${#array[@]} == 2)); then
  printf 'length is 2\n'
elif ((${#array[@]} == 1)); then
  printf 'length is 1\n'
else
  printf 'length is other\n'
fi

is_odd_length=no
if ((${#array[@]} % 2 == 1)); then
  is_odd_length=yes
fi

printf '%s\n' "$is_odd_length"
