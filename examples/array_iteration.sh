#!/usr/bin/env bash
set -euo pipefail

array=(a b c)

for i in "${!array[@]}"; do
  printf '%s %s\n' "$i" "${array[$i]}"
done

mapped=()
for value in "${array[@]}"; do
  mapped+=("$(printf '%s' "$value" | tr '[:lower:]' '[:upper:]')")
done
printf '[%s]\n' "${mapped[*]}"

filtered=()
for i in "${!array[@]}"; do
  if (( i % 2 == 0 )); then
    filtered+=("${array[$i]}")
  fi
done
printf '[%s]\n' "${filtered[*]}"

reduced=()
for i in "${!array[@]}"; do
  if (( i % 2 == 0 )); then
    reduced+=("$(printf '%s' "${array[$i]}" | tr '[:lower:]' '[:upper:]')")
  fi
done
printf '[%s]\n' "${reduced[*]}"
