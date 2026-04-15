#!/usr/bin/env pwsh
param([string]$foo = "default value", [switch]$qux)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

"foo: $foo"
"qux: $($qux.IsPresent.ToString().ToLower())"
