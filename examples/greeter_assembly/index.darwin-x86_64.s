.section __TEXT,__text,regular,pure_instructions
.globl _main
.p2align 4, 0x90

_main:
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
  callq _printf

  xorl %eax, %eax
  popq %rbp
  retq

.section __TEXT,__cstring,cstring_literals
format:
  .asciz "hello %s"
default:
  .asciz "bob"
