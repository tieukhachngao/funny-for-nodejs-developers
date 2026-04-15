#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$listener = [System.Net.Sockets.TcpListener]::new([System.Net.IPAddress]::Any, 3000)
$listener.Start()
try {
  while ($true) {
    $client = $listener.AcceptTcpClient()
    try {
      $stream = $client.GetStream()
      $reader = [IO.StreamReader]::new($stream)
      $writer = [IO.StreamWriter]::new($stream)
      $writer.AutoFlush = $true
      while ($null -ne ($message = $reader.ReadLine())) {
        $writer.WriteLine("Received: $message")
      }
    }
    finally {
      $client.Close()
    }
  }
}
finally {
  $listener.Stop()
}
