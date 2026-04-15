#!/usr/bin/env bash
set -euo pipefail

while true; do
  {
    printf 'HTTP/1.1 200 OK\r\n'
    printf 'Content-Length: 11\r\n'
    printf '\r\n'
    printf 'hello world'
  } | nc -l -p 8080
done
