#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$inputValue = "foobar"
[regex]::Replace($inputValue, "(?i)foo(.*)", "qux`$1")
([regex]::IsMatch($inputValue, "(?i)o{2}")).ToString().ToLower()
$matches = [regex]::Matches("111-222-333", "[0-9]+") | ForEach-Object Value
"[$($matches -join ' ')]"
