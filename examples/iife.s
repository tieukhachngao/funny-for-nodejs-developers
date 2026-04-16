%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

greet:
  WRITE hello_bob, hello_bob_len
  ret

_start:
  call greet
  EXIT

section .data
hello_bob: db "hello bob", 10
hello_bob_len equ $ - hello_bob
