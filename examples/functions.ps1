#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Add([int]$a, [int]$b) { $a + $b }
Add 2 3
