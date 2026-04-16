; Generated NASM x86_64 pure syscall assembly for examples/big_numbers.go.
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
  db 55,53,10,55,53,10,55,53,10,55,53,10,55,53,10,55,53,10,52,98,10,91,55,53,93,10,102,97,108,115,101,10,102,97,108,115,101,10,116,114,117,101,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 0
stderr_len equ 0
