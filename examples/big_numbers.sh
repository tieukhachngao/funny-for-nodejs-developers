#!/usr/bin/env bash
set -euo pipefail

bn=75
printf '%s\n' "$bn"
printf '%s\n' "$((10#75))"
printf '%s\n' "$((0x4b))"
printf '%s\n' "$((16#4b))"
printf '%s\n' "$((0x4b))"
printf '%s\n' "$((0x4b))"
printf '4b\n'
printf '[75]\n'

bn2=100
(( bn == bn2 )) && printf 'true\n' || printf 'false\n'
(( bn > bn2 )) && printf 'true\n' || printf 'false\n'
(( bn < bn2 )) && printf 'true\n' || printf 'false\n'
