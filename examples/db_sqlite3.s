%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE rows, rows_len
  EXIT

section .data
rows:
  db "1 alice", 10
  db "2 bob", 10
  db "3 charlie", 10
rows_len equ $ - rows
