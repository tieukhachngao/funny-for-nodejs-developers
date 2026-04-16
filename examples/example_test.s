%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

sum:
  mov rax, rdi
  add rax, rsi
  ret

_start:
  mov rdi, 1
  mov rsi, 1
  call sum
  cmp rax, 2
  jne fail
  mov rdi, 2
  mov rsi, 3
  call sum
  cmp rax, 5
  jne fail
  EXIT
fail:
  WRITE_ERR failed, failed_len
  EXIT

section .data
failed: db "test failed", 10
failed_len equ $ - failed
