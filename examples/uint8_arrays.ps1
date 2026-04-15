#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

[byte[]]$array = 0,0,0,0,0,0,0,0,0,0
"[$($array -join ' ')]"
$array[1..3] = 1,2,3
"[$($array -join ' ')]"
"[$($array[2..9] -join ' ')]"
"[$($array[2..3] -join ' ')]"
"[$($array -join ' ')]"
for ($i = 5; $i -lt 10; $i++) { $array[$i] = 9 }
"[$($array -join ' ')]"
$array.Length
