%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE_ERR message, message_len
  EXIT

section .data
message: db "hello world", 10
message_len equ $ - message
