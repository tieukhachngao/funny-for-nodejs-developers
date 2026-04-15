#!/usr/bin/env bash
set -euo pipefail

generator() {
  printf 'hello\n'
  printf 'world\n'
}

while read -r value; do
  printf '%s true\n' "$value"
done < <(generator)
printf ' false\n'

while read -r value; do
  printf '%s\n' "$value"
done < <(generator)

values=(hello world)
for value in "${values[@]}"; do
  printf '%s true\n' "$value"
done
printf ' false\n'
