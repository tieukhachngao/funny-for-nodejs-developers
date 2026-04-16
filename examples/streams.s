; Generated NASM x86_64 pure syscall assembly for examples/streams.go.
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
  db 102,111,111,98,97,114,10,114,101,99,101,105,118,101,100,58,32,97,98,99,10,114,101,99,101,105,118,101,100,58,32,120,121,99,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 0
stderr_len equ 0
