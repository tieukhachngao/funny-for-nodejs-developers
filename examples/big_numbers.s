%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  mov r12, 0
repeat_75:
  cmp r12, 6
  je compare_lines
  WRITE seventy_five, seventy_five_len
  inc r12
  jmp repeat_75

compare_lines:
  WRITE hex_line, hex_line_len
  WRITE bytes_line, bytes_line_len
  WRITE false_line, false_line_len
  WRITE false_line, false_line_len
  WRITE true_line, true_line_len
  EXIT

section .data
seventy_five: db "75", 10
seventy_five_len equ $ - seventy_five
bytes_line: db "[75]", 10
bytes_line_len equ $ - bytes_line
hex_line: db "4b", 10
hex_line_len equ $ - hex_line
false_line: db "false", 10
false_line_len equ $ - false_line
true_line: db "true", 10
true_line_len equ $ - true_line
