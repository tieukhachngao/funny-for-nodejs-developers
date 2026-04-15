#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$array = 1, 2
if ($null -ne $array) { 'array exists' }
if ($array.Length -eq 2) { 'length is 2' } elseif ($array.Length -eq 1) { 'length is 1' } else { 'length is other' }
if ($array.Length % 2 -eq 1) { 'yes' } else { 'no' }
