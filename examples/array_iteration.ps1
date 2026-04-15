#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$array = 'a', 'b', 'c'
for ($i = 0; $i -lt $array.Length; $i++) { "$i $($array[$i])" }
$mapped = $array | ForEach-Object { $_.ToUpperInvariant() }
"[$($mapped -join ' ')]"
$filtered = for ($i = 0; $i -lt $array.Length; $i++) { if ($i % 2 -eq 0) { $array[$i] } }
"[$($filtered -join ' ')]"
$reduced = for ($i = 0; $i -lt $array.Length; $i++) { if ($i % 2 -eq 0) { $array[$i].ToUpperInvariant() } }
"[$($reduced -join ' ')]"
