#!/usr/bin/env bash
set -euo pipefail

greet() {
  printf 'hello %s' "$1"
}

if [[ ${BASH_SOURCE[0]} == "$0" ]]; then
  greet "${1:-bob}"
fi
