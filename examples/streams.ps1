#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$inStream = [System.Text.StringBuilder]::new()
[void]$inStream.Append("foo")
[void]$inStream.Append("bar")
$inStream.ToString()
"abc", "xyc" | ForEach-Object { "received: $_" }
