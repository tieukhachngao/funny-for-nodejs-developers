#!/usr/bin/env bash
set -euo pipefail

dig +short NS google.com
dig +short A google.com
dig +short MX google.com
dig +short TXT google.com
dig @1.1.1.1 +short NS google.com
