#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$date = [DateTimeOffset]::Parse("2019-01-17T09:24:23+00:00")
[DateTimeOffset]::Now.ToUnixTimeSeconds()
$date.ToUnixTimeSeconds()
$date.UtcDateTime.ToString("yyyy-MM-dd HH:mm:ss +0000 UTC", [Globalization.CultureInfo]::InvariantCulture)
$date.AddDays(14).UtcDateTime.ToString("yyyy-MM-dd HH:mm:ss +0000 UTC", [Globalization.CultureInfo]::InvariantCulture)
$date.ToString("MM/dd/yyyy")
