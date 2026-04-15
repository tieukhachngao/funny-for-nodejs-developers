#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$a = "foo"; $b = "bar"
"$a $b"
$a, $b = $b, $a
"$a $b"
