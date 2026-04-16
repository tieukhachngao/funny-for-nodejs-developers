section .text
  global _start

write:
  mov rax, 0x2000004
  mov rdi, 1
  syscall
  ret

_start:
  mov r12, 2
  cmp r12, 0
  je check_len
  lea rsi, [rel exists]
  mov rdx, exists_len
  call write

check_len:
  cmp r12, 2
  je len_two
  cmp r12, 1
  je len_one
  lea rsi, [rel len_other]
  mov rdx, len_other_len
  call write
  jmp ternary

len_two:
  lea rsi, [rel len_2]
  mov rdx, len_2_len
  call write
  jmp ternary

len_one:
  lea rsi, [rel len_1]
  mov rdx, len_1_len
  call write

ternary:
  test r12, 1
  jnz odd
  lea rsi, [rel no]
  mov rdx, no_len
  call write
  jmp exit

odd:
  lea rsi, [rel yes]
  mov rdx, yes_len
  call write

exit:
  mov rax, 0x2000001
  xor rdi, rdi
  syscall

section .data
exists:
  db "array exists", 10
exists_len equ $ - exists
len_2:
  db "length is 2", 10
len_2_len equ $ - len_2
len_1:
  db "length is 1", 10
len_1_len equ $ - len_1
len_other:
  db "length is other", 10
len_other_len equ $ - len_other
yes:
  db "yes", 10
yes_len equ $ - yes
no:
  db "no", 10
no_len equ $ - no
