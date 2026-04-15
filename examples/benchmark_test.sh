#!/usr/bin/env bash
set -euo pipefail

fib_rec() {
  local n=$1
  if (( n <= 1 )); then
    printf '%d\n' "$n"
    return
  fi
  local a b
  a=$(fib_rec "$((n - 1))")
  b=$(fib_rec "$((n - 2))")
  printf '%d\n' "$((a + b))"
}

fib_loop() {
  local n=$1
  local -a f
  f[0]=0
  f[1]=1
  for ((i = 2; i <= n; i++)); do
    f[$i]=$((f[i - 1] + f[i - 2]))
  done
  printf '%d\n' "${f[$n]}"
}

for fn in fib_rec fib_loop; do
  start=$SECONDS
  for ((n = 0; n < 100; n++)); do
    "$fn" 10 >/dev/null
  done
  printf '%s completed in %ss\n' "$fn" "$((SECONDS - start))"
done
