#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$obj = [pscustomobject]@{ SomeProperties = @{ foo = "bar" } }
$obj.SomeProperties.foo
function SomeMethod([string]$prop) { $obj.SomeProperties[$prop] }
SomeMethod foo
