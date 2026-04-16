%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE be_hex, be_hex_len
  WRITE le_hex, le_hex_len
  WRITE false_line, false_line_len
  WRITE true_line, true_line_len
  EXIT

section .data
be_hex: db "1234567890ab", 10
be_hex_len equ $ - be_hex
le_hex: db "ab9078563412", 10
le_hex_len equ $ - le_hex
false_line: db "false", 10
false_line_len equ $ - false_line
true_line: db "true", 10
true_line_len equ $ - true_line
