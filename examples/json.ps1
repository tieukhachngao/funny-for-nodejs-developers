#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$jsonstr = '{"foo":"bar"}'
$t = $jsonstr | ConvertFrom-Json
$t
$t | ConvertTo-Json -Compress
