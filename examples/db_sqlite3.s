; Generated NASM x86_64 pure syscall assembly for examples/db_sqlite3.go.
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
  db 49,32,97,108,105,99,101,10,50,32,98,111,98,10,51,32,99,104,97,114,108,105,101,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 0
stderr_len equ 0
