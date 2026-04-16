%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE output, output_len
  EXIT

section .data
output: db "hello world", 10, 10
output_len equ $ - output
