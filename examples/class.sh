#!/usr/bin/env bash
set -euo pipefail

foo_item=bar

foo_get_item() {
  printf '%s\n' "$foo_item"
}

foo_set_item() {
  foo_item=$1
}

printf '%s\n' "$foo_item"
foo_set_item qux
item=$(foo_get_item)
printf '%s\n' "$item"
