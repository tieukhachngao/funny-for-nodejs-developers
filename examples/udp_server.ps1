#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Native PowerShell UDP listener setup
$udp = [System.Net.Sockets.UdpClient]::new(3000); $udp.Close()
