#!/usr/bin/env bash
set -euo pipefail

foo='default value'
qux=false

while (($#)); do
  case $1 in
    -foo|--foo)
      foo=${2:-}
      shift 2
      ;;
    -qux|--qux)
      qux=true
      shift
      ;;
    *)
      shift
      ;;
  esac
done

printf 'foo: %s\n' "$foo"
printf 'qux: %s\n' "$qux"
