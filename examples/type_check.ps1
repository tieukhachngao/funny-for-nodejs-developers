#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$values = @($true, [int]10, [long]10, [double]10.5, 'foo', @(), @{}, { }, $null, (Get-Date), [regex]'^a$')
foreach ($value in $values) { if ($null -eq $value) { 'null' } else { $value.GetType().FullName } }
