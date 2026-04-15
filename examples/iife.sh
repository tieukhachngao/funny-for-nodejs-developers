#!/usr/bin/env bash
set -euo pipefail

(
  name=bob
  printf 'hello %s\n' "$name"
)
