.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  cmpq $2, %rdi
  jl use_default_name

  movq 8(%rsi), %r13
  jmp write_greeting

use_default_name:
  leaq default_name(%rip), %r13

write_greeting:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq prefix(%rip), %rsi
  movq $6, %rdx
  syscall

  xorl %ecx, %ecx

name_len_loop:
  cmpb $0, (%r13,%rcx)
  je write_name
  incq %rcx
  jmp name_len_loop

write_name:
  movq $0x2000004, %rax
  movq $1, %rdi
  movq %r13, %rsi
  movq %rcx, %rdx
  syscall

  movq $0x2000001, %rax
  xorl %edi, %edi
  syscall

.section __TEXT,__cstring,cstring_literals
prefix:
  .asciz "hello "
default_name:
  .asciz "bob"
