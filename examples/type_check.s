%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE types, types_len
  EXIT

section .data
types:
  db "bool", 10
  db "int8", 10
  db "int16", 10
  db "int32", 10
  db "int64", 10
  db "uint", 10
  db "uint8", 10
  db "uint16", 10
  db "uint32", 10
  db "uint64", 10
  db "uintptr", 10
  db "float32", 10
  db "float64", 10
  db "complex64", 10
  db "complex128", 10
  db "string", 10
  db "uint8", 10
  db "int32", 10
  db "int32", 10
  db "struct {}", 10
  db "[]string", 10
  db "map[string]int", 10
  db "func()", 10
  db "chan bool", 10
  db "<nil>", 10
  db "*int", 10
  db "time.Time", 10
  db "*regexp.Regexp", 10
types_len equ $ - types
