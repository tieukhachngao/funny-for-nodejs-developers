#!/usr/bin/env bash
set -euo pipefail

value=b

case $value in
  a) printf 'A\n' ;;
  b) printf 'B\n' ;;
  c) printf 'C\n' ;;
  *) printf 'first default\n' ;;
esac

falling=false
for case_value in a b c default; do
  if [[ $case_value == "$value" || $falling == true ]]; then
    falling=true
    case $case_value in
      a) printf 'A - falling through\n' ;;
      b) printf 'B - falling through\n' ;;
      c) printf 'C - falling through\n' ;;
      default) printf 'second default\n' ;;
    esac
  fi
done
