%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  mov r12, 0
loop_values:
  cmp r12, 5
  je finish
  mov byte [rel digit], '1'
  add byte [rel digit], r12b
  WRITE digit, 1
  inc r12
  cmp r12, 5
  je newline_out
  WRITE space, 1
  jmp loop_values
newline_out:
  WRITE newline, 1
finish:
  EXIT

section .data
digit: db "1"
space: db " "
newline: db 10
