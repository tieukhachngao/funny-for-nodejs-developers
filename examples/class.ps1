#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

class Foo {
  [string]$Item

  Foo([string]$value) {
    $this.Item = $value
  }

  [string]GetItem() {
    return $this.Item
  }

  [void]SetItem([string]$value) {
    $this.Item = $value
  }
}
$foo = [Foo]::new("bar")
$foo.Item
$foo.SetItem("qux")
$foo.GetItem()
