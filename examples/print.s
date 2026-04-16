%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE out1, out1_len
  WRITE out2, out2_len
  WRITE_ERR err1, err1_len
  EXIT

section .data
out1: db "print to stdout", 10
out1_len equ $ - out1
out2: db "format example 1", 10
out2_len equ $ - out2
err1: db "print to stderr"
err1_len equ $ - err1
