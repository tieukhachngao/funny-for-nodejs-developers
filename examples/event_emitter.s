%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

emit:
  mov rsi, rdi
  mov rdx, rbx
  mov rax, 0x2000004
  mov rdi, 1
  syscall
  WRITE newline, 1
  ret

_start:
  lea rdi, [rel msg1]
  mov rbx, msg1_len
  call emit
  lea rdi, [rel msg2]
  mov rbx, msg2_len
  call emit
  EXIT

section .data
msg1: db "hello world"
msg1_len equ $ - msg1
msg2: db "hello other world"
msg2_len equ $ - msg2
newline: db 10
