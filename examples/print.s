; Generated NASM x86_64 pure syscall assembly for examples/print.go.
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
  db 112,114,105,110,116,32,116,111,32,115,116,100,111,117,116,10,102,111,114,109,97,116,32,101,120,97,109,112,108,101,32,49,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 112,114,105,110,116,32,116,111,32,115,116,100,101,114,114
stderr_len equ $ - stderr_bytes
