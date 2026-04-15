#!/usr/bin/env bash
set -euo pipefail

emit() {
  local event=$1
  local message=$2
  case $event in
    my-event|my-other-event)
      printf '%s\n' "$message"
      ;;
  esac
}

emit my-event 'hello world'
emit my-other-event 'hello other world'
