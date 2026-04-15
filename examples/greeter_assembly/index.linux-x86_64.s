.section .text
.globl _start
.type _start, @function

_start:
  movq (%rsp), %r12
  cmpq $2, %r12
  jl use_default_name

  movq 16(%rsp), %r13
  jmp write_greeting

use_default_name:
  leaq default_name(%rip), %r13

write_greeting:
  movq $1, %rax
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
  movq $1, %rax
  movq $1, %rdi
  movq %r13, %rsi
  movq %rcx, %rdx
  syscall

  movq $60, %rax
  xorl %edi, %edi
  syscall

.section .rodata
prefix:
  .asciz "hello "
default_name:
  .asciz "bob"
