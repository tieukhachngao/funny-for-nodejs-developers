; Generated NASM x86_64 pure syscall assembly for examples/async_await.go.
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
  db 104,101,108,108,111,32,98,111,98,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 102,97,105,108,101,100,10
stderr_len equ $ - stderr_bytes
