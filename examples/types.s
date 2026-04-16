%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  mov byte [rel my_bool], 1
  mov qword [rel my_int], 10
  lea r12, [rel my_string]
  EXIT

section .data
my_bool: db 0
my_int: dq 0
my_string: db "foo", 0
