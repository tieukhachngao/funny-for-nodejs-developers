#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Sum([int]$a,[int]$b){$a+$b}
$tests = @(@(1,1,2),@(2,3,5),@(5,5,10))
foreach ($t in $tests) { if ((Sum $t[0] $t[1]) -ne $t[2]) { throw "failed" } }
