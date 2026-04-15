#!/usr/bin/env bash
set -euo pipefail

print_array() {
  printf '[%s]\n' "$*"
}

array=(0 0 0 0 0 0 0 0 0 0)
print_array "${array[@]}"

offset=1
values=(1 2 3)
for i in "${!values[@]}"; do
  array[$((offset + i))]=${values[$i]}
done
print_array "${array[@]}"

sub=("${array[@]:2}")
print_array "${sub[@]}"

sub2=("${array[@]:2:2}")
print_array "${sub2[@]}"

print_array "${array[@]}"
value=9
start=5
end=10
for ((i = start; i < end; i++)); do
  array[$i]=$value
done
print_array "${array[@]}"

printf '%d\n' "${#array[@]}"
