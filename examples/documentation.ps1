#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

class Person {
  [string]$Name

  Person([string]$name) {
    $this.Name = $name
  }

  [string]GetName() {
    return $this.Name
  }

  [void]SetName([string]$name) {
    $this.Name = $name
  }
}
$person = [Person]::new("bob")
$person.GetName()
