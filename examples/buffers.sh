#!/usr/bin/env bash
set -euo pipefail

buf=1234567890ab
buf2=ab9078563412

printf '%s\n' "$buf"
printf '%s\n' "$buf2"
[[ $buf == "$buf2" ]] && printf 'true\n' || printf 'false\n'
[[ $buf == "$buf" ]] && printf 'true\n' || printf 'false\n'
