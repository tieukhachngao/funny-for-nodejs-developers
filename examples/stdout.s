section .text
  global _start

_start:
  mov rax, 0x2000004
  mov rdi, 1
  lea rsi, [rel message]
  mov rdx, message_len
  syscall

  mov rax, 0x2000001
  xor rdi, rdi
  syscall

section .data
message:
  db "hello world", 10
message_len equ $ - message
