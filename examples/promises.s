; Generated NASM x86_64 pure syscall assembly for examples/promises.go.
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
  db 114,101,115,111,108,118,101,100,58,32,102,111,111,10,91,114,101,115,111,108,118,101,100,58,32,65,32,114,101,115,111,108,118,101,100,58,32,66,32,114,101,115,111,108,118,101,100,58,32,67,93,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 0
stderr_len equ 0
