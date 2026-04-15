#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$value = 'b'
switch ($value) { 'a' { 'A'; break } 'b' { 'B'; break } 'c' { 'C'; break } default { 'first default' } }
'B - falling through'
'C - falling through'
'second default'
