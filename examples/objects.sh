#!/usr/bin/env bash
set -euo pipefail

some_properties_foo=bar

some_method() {
  local prop=$1
  case $prop in
    foo) printf '%s\n' "$some_properties_foo" ;;
  esac
}

item=$some_properties_foo
printf '%s\n' "$item"

item=$(some_method foo)
printf '%s\n' "$item"
