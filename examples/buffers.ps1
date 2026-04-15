#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$buf = [byte[]](0x12,0x34,0x56,0x78,0x90,0xab)
($buf | ForEach-Object { $_.ToString("x2") }) -join ""
$buf2 = [byte[]](0xab,0x90,0x78,0x56,0x34,0x12)
($buf2 | ForEach-Object { $_.ToString("x2") }) -join ""
[System.Linq.Enumerable]::SequenceEqual($buf, $buf2).ToString().ToLower()
[System.Linq.Enumerable]::SequenceEqual($buf, $buf).ToString().ToLower()
