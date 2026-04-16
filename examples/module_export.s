%include "examples/asm_runtime_darwin.inc"

section .text
  global _start
  global greet

greet:
  WRITE hello, hello_len
  ret

_start:
  EXIT

section .data
hello: db "hello bob"
hello_len equ $ - hello
