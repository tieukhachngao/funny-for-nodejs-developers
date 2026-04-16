%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  xor r12, r12
loop_interval:
  cmp r12, 4
  je done
  WRITE called, called_len
  mov byte [rel digit], '0'
  add byte [rel digit], r12b
  WRITE digit, 1
  WRITE newline, 1
  inc r12
  jmp loop_interval
done:
  EXIT

section .data
called: db "called "
called_len equ $ - called
digit: db "0"
newline: db 10
