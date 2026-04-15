#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$bn = [bigint]75
$bn.ToString()
[bigint]::Parse("75").ToString()
([bigint]0x4b).ToString()
[Convert]::ToInt64("4b", 16)
[bigint]75
[uint64]75
"4b"
"[75]"
($bn -eq 100).ToString().ToLower()
($bn -gt 100).ToString().ToLower()
($bn -lt 100).ToString().ToLower()
