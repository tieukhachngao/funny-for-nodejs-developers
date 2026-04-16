%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

greet_default:
  WRITE hello, hello_len
  WRITE stranger, stranger_len
  WRITE newline, 1
  ret

greet_name:
  WRITE hello, hello_len
  WRITE bob, bob_len
  WRITE newline, 1
  ret

_start:
  call greet_default
  call greet_name
  EXIT

section .data
hello: db "hello "
hello_len equ $ - hello
stranger: db "stranger"
stranger_len equ $ - stranger
bob: db "bob"
bob_len equ $ - bob
newline: db 10
