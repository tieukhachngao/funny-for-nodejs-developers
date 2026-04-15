#!/usr/bin/env bash
set -euo pipefail

print_list() {
  printf '['
  local first=1
  for item in "$@"; do
    (( first )) || printf ' '
    printf '%s' "$item"
    first=0
  done
  printf ']\n'
}

int_list=()
while IFS= read -r item; do
  int_list+=("$item")
done < <(printf '%s\n' 1 3 5 9 4 2 0 | sort -n)
print_list "${int_list[@]}"
int_list=()
while IFS= read -r item; do
  int_list+=("$item")
done < <(printf '%s\n' 0 1 2 3 4 5 9 | sort -nr)
print_list "${int_list[@]}"

string_list=()
while IFS= read -r item; do
  string_list+=("$item")
done < <(printf '%s\n' a d z b c y | sort)
print_list "${string_list[@]}"
string_list=()
while IFS= read -r item; do
  string_list+=("$item")
done < <(printf '%s\n' a b c d y z | sort -r)
print_list "${string_list[@]}"

people=("Li L:8" "Json C:3" "Zack W:15" "Yi M:2")
people_sorted=()
while IFS= read -r item; do
  people_sorted+=("$item")
done < <(printf '%s\n' "${people[@]}" | sort -t: -k2,2n)
people=("${people_sorted[@]}")
print_list "${people[@]}"
people_sorted=()
while IFS= read -r item; do
  people_sorted+=("$item")
done < <(printf '%s\n' "${people[@]}" | sort -t: -k2,2nr)
people=("${people_sorted[@]}")
print_list "${people[@]}"
