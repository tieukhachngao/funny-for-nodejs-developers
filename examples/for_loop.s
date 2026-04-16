section .text
  global _start

_start:
  xor r12, r12

loop_start:
  cmp r12, 5
  jg exit

  mov byte [rel digit], '0'
  add byte [rel digit], r12b
  mov rax, 0x2000004
  mov rdi, 1
  lea rsi, [rel digit]
  mov rdx, 2
  syscall

  inc r12
  jmp loop_start

exit:
  mov rax, 0x2000001
  xor rdi, rdi
  syscall

section .data
digit:
  db "0", 10
