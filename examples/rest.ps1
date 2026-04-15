#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Sum { param([int[]]$Nums) ($Nums | Measure-Object -Sum).Sum }
Sum 1 2 3 4 5
