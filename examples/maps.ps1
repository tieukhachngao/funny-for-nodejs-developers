#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$map1 = @{}
$map1["foo"] = "bar"
$map1.ContainsKey("foo").ToString().ToLower()
$map1["foo"]
$map1.Remove("foo")
$map1.ContainsKey("foo").ToString().ToLower()
""
$map2 = [ordered]@{foo=100;bar=200;baz=300}
foreach ($key in $map2.Keys) { "$key $($map2[$key])" }
