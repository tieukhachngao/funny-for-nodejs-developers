%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

foo:
  mov rax, 1
  ret

_start:
  call foo
  cmp rax, 0
  je exit
  WRITE caught, caught_len
exit:
  EXIT

section .data
caught: db "caught exception: my exception"
caught_len equ $ - caught
