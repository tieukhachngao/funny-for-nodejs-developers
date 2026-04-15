#!/usr/bin/env bash
set -euo pipefail

key=foo
value=bar

printf '%s %s\n' "$key" "$value"

read_obj() {
  printf '%s %s\n' "$key" "$value"
}

read -r key value < <(read_obj)
printf '%s %s\n' "$key" "$value"
