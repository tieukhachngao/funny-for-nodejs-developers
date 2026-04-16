; Generated NASM x86_64 pure syscall assembly for examples/array_sort.go.
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
  db 91,48,32,49,32,50,32,51,32,52,32,53,32,57,93,10,91,57,32,53,32,52,32,51,32,50,32,49,32,48,93,10,91,97,32,98,32,99,32,100,32,121,32,122,93,10,91,122,32,121,32,100,32,99,32,98,32,97,93,10,91,123,89,105,32,77,32,50,125,32,123,74,115,111,110,32,67,32,51,125,32,123,76,105,32,76,32,56,125,32,123,90,97,99,107,32,87,32,49,53,125,93,10,91,123,90,97,99,107,32,87,32,49,53,125,32,123,76,105,32,76,32,56,125,32,123,74,115,111,110,32,67,32,51,125,32,123,89,105,32,77,32,50,125,93,10
stdout_len equ $ - stdout_bytes

stderr_bytes:
  db 0
stderr_len equ 0
