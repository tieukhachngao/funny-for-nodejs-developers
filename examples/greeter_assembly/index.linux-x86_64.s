section .text
  global _start

_start:
  mov r12, [rsp]
  cmp r12, 2
  jl use_default_name

  mov r13, [rsp + 16]
  jmp write_greeting

use_default_name:
  lea r13, [rel default_name]

write_greeting:
  mov rax, 1
  mov rdi, 1
  lea rsi, [rel prefix]
  mov rdx, prefix_len
  syscall

  xor rcx, rcx

name_len_loop:
  cmp byte [r13 + rcx], 0
  je write_name
  inc rcx
  jmp name_len_loop

write_name:
  mov rax, 1
  mov rdi, 1
  mov rsi, r13
  mov rdx, rcx
  syscall

  mov rax, 60
  xor rdi, rdi
  syscall

section .data
prefix:
  db "hello "
prefix_len equ $ - prefix

default_name:
  db "bob", 0
