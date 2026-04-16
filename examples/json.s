%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE struct_line, struct_line_len
  WRITE json_line, json_line_len
  EXIT

section .data
struct_line: db "&{bar}", 10
struct_line_len equ $ - struct_line
json_line: db '{"foo":"bar"}', 10
json_line_len equ $ - json_line
