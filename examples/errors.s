%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE err1, err1_len
  WRITE err2, err2_len
  EXIT

section .data
err1: db "some error", 10
err1_len equ $ - err1
err2: db "my custom error", 10
err2_len equ $ - err2
