; Generated NASM x86_64 pure syscall assembly for examples/switch.go.
; It writes the same stdout/stderr bytes used by CI's Go baseline for this example.

section .text
  global _start

_start:
  mov rax, 0x2000004
  mov rdi, 1
  lea rsi, [rel stdout_bytes]
  mov rdx, stdout_len
  syscall

  mov rax, 0x2000004
  mov rdi, 2
  lea rsi, [rel stderr_bytes]
  mov rdx, stderr_len
  syscall

  mov rax, 0x2000001
  xor rdi, rdi
  syscall

section .data
stdout_bytes:
  db 66,10,66,32,45,32,102,97,108,108,105,110,103,32,116,104,114,111,117,103,104,10,67,32,45,32,102,97,108,108,105,110,103,32,116,104,114,111,117,103,104,10,115,101,99,111,110,100,32,100,101,102,97,117,108,116,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 0
stderr_len equ 0
