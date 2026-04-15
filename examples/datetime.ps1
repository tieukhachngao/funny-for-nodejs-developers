#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$date = [DateTimeOffset]::Parse("2019-01-17T09:24:23+00:00")
[DateTimeOffset]::Now.ToUnixTimeSeconds()
$date.ToUnixTimeSeconds()
$date.ToString()
$date.AddDays(14).ToString()
$date.ToString("MM/dd/yyyy")
