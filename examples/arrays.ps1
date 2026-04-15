#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$array = 1, 2, 3, 4, 5
"[$($array -join ' ')]"
$clone = @($array)
"[$($clone -join ' ')]"
$sub = $array[2..3]
"[$($sub -join ' ')]"
$concatenated = $array + 6 + 7
"[$($concatenated -join ' ')]"
$prepended = -2, -1, 0 + $concatenated
"[$($prepended -join ' ')]"
