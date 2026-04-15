#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Write-Output 'print to stdout'
Write-Output ('format {0} {1}' -f 'example', 1)
[Console]::Error.Write('print to stderr')
