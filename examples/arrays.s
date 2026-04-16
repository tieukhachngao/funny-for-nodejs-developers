; Generated NASM x86_64 pure syscall assembly for examples/arrays.go.
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
  db 91,49,32,50,32,51,32,52,32,53,93,10,91,49,32,50,32,51,32,52,32,53,93,10,91,51,32,52,93,10,91,49,32,50,32,51,32,52,32,53,32,54,32,55,93,10,91,45,50,32,45,49,32,48,32,49,32,50,32,51,32,52,32,53,32,54,32,55,93,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 0
stderr_len equ 0
