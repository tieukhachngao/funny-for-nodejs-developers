#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$intList = 1,3,5,9,4,2,0
"[$(($intList | Sort-Object) -join ' ')]"
"[$(($intList | Sort-Object -Descending) -join ' ')]"
$stringList = "a","d","z","b","c","y"
"[$(($stringList | Sort-Object) -join ' ')]"
"[$(($stringList | Sort-Object -Descending) -join ' ')]"
$people = @([pscustomobject]@{Name="Li L";Age=8},[pscustomobject]@{Name="Json C";Age=3},[pscustomobject]@{Name="Zack W";Age=15},[pscustomobject]@{Name="Yi M";Age=2})
($people | Sort-Object Age | ForEach-Object { "$($_.Name):$($_.Age)" }) -join " "
($people | Sort-Object Age -Descending | ForEach-Object { "$($_.Name):$($_.Age)" }) -join " "
