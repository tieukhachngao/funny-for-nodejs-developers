%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE hello, hello_len
  EXIT

section .data
hello: db "hello world", 10
hello_len equ $ - hello
