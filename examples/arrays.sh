#!/usr/bin/env bash
set -euo pipefail

print_array() {
  printf '[%s]\n' "$*"
}

array=(1 2 3 4 5)
print_array "${array[@]}"

clone=("${array[@]}")
print_array "${clone[@]}"

sub=("${array[@]:2:2}")
print_array "${sub[@]}"

concatenated=("${array[@]}" 6 7)
print_array "${concatenated[@]}"

prepended=(-2 -1 0 "${concatenated[@]}")
print_array "${prepended[@]}"
