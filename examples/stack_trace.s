%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

foo:
  WRITE failed, failed_len
  ret

_start:
  call foo
  EXIT

section .data
failed: db "failed", 10
failed_len equ $ - failed
