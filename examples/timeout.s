%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE called, called_len
  EXIT

section .data
called: db "called", 10
called_len equ $ - called
