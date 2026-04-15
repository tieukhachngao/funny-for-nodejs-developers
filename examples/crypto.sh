#!/usr/bin/env bash
set -euo pipefail

printf 'hello' | sha256sum | awk '{print $1}'
