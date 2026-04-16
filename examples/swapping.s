section .text
  global _start

write_part:
  mov rax, 0x2000004
  mov rdi, 1
  syscall
  ret

print_pair:
  mov rsi, r12
  mov rdx, 3
  call write_part
  lea rsi, [rel space]
  mov rdx, 1
  call write_part
  mov rsi, r13
  mov rdx, 3
  call write_part
  lea rsi, [rel newline]
  mov rdx, 1
  call write_part
  ret

_start:
  lea r12, [rel foo]
  lea r13, [rel bar]
  call print_pair

  mov r14, r12
  mov r12, r13
  mov r13, r14
  call print_pair

  mov rax, 0x2000001
  xor rdi, rdi
  syscall

section .data
foo:
  db "foo"
bar:
  db "bar"
space:
  db " "
newline:
  db 10
