#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$udp = [System.Net.Sockets.UdpClient]::new(3000)
$remote = [System.Net.IPEndPoint]::new([System.Net.IPAddress]::Any, 0)
"server listening 0.0.0.0:3000"
try {
  while ($true) {
    $bytes = $udp.Receive([ref]$remote)
    $data = [Text.Encoding]::UTF8.GetString($bytes).Trim()
    "received: $data from $remote"
  }
}
finally {
  $udp.Close()
}
