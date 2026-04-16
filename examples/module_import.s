%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE unix_sample, unix_sample_len
  EXIT

section .data
unix_sample: db "0", 10
unix_sample_len equ $ - unix_sample
