#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$obj = @{ Key = "foo"; Value = "bar" }
$key, $value = $obj.Key, $obj.Value
"$key $value"
function Read-Obj { "foo", "bar" }
$key, $value = Read-Obj
"$key $value"
