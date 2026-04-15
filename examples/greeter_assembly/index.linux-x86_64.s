.section .text
.globl main
.type main, @function

main:
  pushq %rbp
  movq %rsp, %rbp

  cmpl $2, %edi
  jl default_name

  movq 8(%rsi), %rsi
  jmp print

default_name:
  leaq default(%rip), %rsi

print:
  leaq format(%rip), %rdi
  xorl %eax, %eax
  call printf@PLT

  xorl %eax, %eax
  popq %rbp
  retq

.section .rodata
format:
  .asciz "hello %s"
default:
  .asciz "bob"
