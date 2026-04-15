#!/usr/bin/env bash
set -euo pipefail

new_foo_error() {
  printf '%s\n' "$1"
}

err1='some error'
printf '%s\n' "$err1"

err2=$(new_foo_error 'my custom error')
printf '%s\n' "$err2"
