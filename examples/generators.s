%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE generator_output, generator_output_len
  EXIT

section .data
generator_output:
  db "hello true", 10
  db "world true", 10
  db " false", 10
  db "hello", 10
  db "world", 10
  db "hello true", 10
  db "world true", 10
  db " false", 10
generator_output_len equ $ - generator_output
