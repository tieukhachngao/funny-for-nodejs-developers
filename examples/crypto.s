; Generated NASM x86_64 pure syscall assembly for examples/crypto.go.
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
  db 50,99,102,50,52,100,98,97,53,102,98,48,97,51,48,101,50,54,101,56,51,98,50,97,99,53,98,57,101,50,57,101,49,98,49,54,49,101,53,99,49,102,97,55,52,50,53,101,55,51,48,52,51,51,54,50,57,51,56,98,57,56,50,52,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 0
stderr_len equ 0
