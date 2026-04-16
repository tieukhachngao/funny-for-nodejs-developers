%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

fib_rec:
  cmp rdi, 1
  jg rec_more
  mov rax, rdi
  ret
rec_more:
  push rdi
  dec rdi
  call fib_rec
  mov r12, rax
  pop rdi
  sub rdi, 2
  call fib_rec
  add rax, r12
  ret

_start:
  mov rdi, 10
  call fib_rec
  EXIT
