%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE parsed, parsed_len
  EXIT

section .data
parsed:
  db "http", 10
  db "bob:secret", 10
  db "8080", 10
  db "sub.example.com", 10
  db "/somepath", 10
  db "map[foo:[bar]]", 10
parsed_len equ $ - parsed
