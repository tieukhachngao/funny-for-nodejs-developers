%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE listening, listening_len
  EXIT

section .data
listening: db "server listening 0.0.0.0:3000", 10
listening_len equ $ - listening
