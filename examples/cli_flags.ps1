#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

param([string]$foo = "default value", [switch]$qux)
"foo: $foo"
"qux: $($qux.IsPresent.ToString().ToLower())"
