%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

get_name:
  WRITE bob, bob_len
  ret

_start:
  call get_name
  EXIT

section .data
bob: db "bob", 10
bob_len equ $ - bob
