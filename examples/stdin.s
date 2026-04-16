%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE prompt, prompt_len
  mov rax, 0x2000003
  mov rdi, 0
  lea rsi, [rel buffer]
  mov rdx, 255
  syscall
  WRITE answer, answer_len
  mov rdx, rax
  mov rax, 0x2000004
  mov rdi, 1
  lea rsi, [rel buffer]
  syscall
  EXIT

section .bss
buffer: resb 256

section .data
prompt: db "Enter name: "
prompt_len equ $ - prompt
answer: db "Your name is: "
answer_len equ $ - answer
