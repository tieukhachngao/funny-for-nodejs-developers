%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE compressed, compressed_len
  WRITE data, data_len
  EXIT

section .data
compressed: db "compressed: true", 10
compressed_len equ $ - compressed
data: db "hello world", 10
data_len equ $ - data
