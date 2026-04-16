section .text
  global _start

add:
  mov rax, rdi
  add rax, rsi
  ret

_start:
  mov rdi, 2
  mov rsi, 3
  call add

  add al, '0'
  mov [rel result], al

  mov rax, 0x2000004
  mov rdi, 1
  lea rsi, [rel result]
  mov rdx, 2
  syscall

  mov rax, 0x2000001
  xor rdi, rdi
  syscall

section .data
result:
  db "0", 10
