#!/usr/bin/env bash
set -euo pipefail

callback() {
  printf 'called\n'
}

sleep 1
callback
