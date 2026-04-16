%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

some_method:
  WRITE bar, bar_len
  WRITE newline, 1
  ret

_start:
  WRITE bar, bar_len
  WRITE newline, 1
  call some_method
  EXIT

section .data
bar: db "bar"
bar_len equ $ - bar
newline: db 10
