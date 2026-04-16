%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE content, content_len
  EXIT

section .data
content: db "hello world.", 10
content_len equ $ - content
