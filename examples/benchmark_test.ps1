#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function FibRec([int]$n){ if($n -le 1){return $n}; (FibRec ($n-1)) + (FibRec ($n-2)) }
function FibLoop([int]$n){ $f=0,1; for($i=2;$i -le $n;$i++){ $f += $f[$i-1]+$f[$i-2] }; $f[$n] }
Measure-Command { 1..100 | ForEach-Object { FibRec 10 | Out-Null } }
Measure-Command { 1..100 | ForEach-Object { FibLoop 10 | Out-Null } }
