%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE name, name_len
  WRITE text, text_len
  WRITE age, age_len
  WRITE suffix, suffix_len
  EXIT

section .data
name: db "bob"
name_len equ $ - name
text: db " is "
text_len equ $ - text
age: db "21"
age_len equ $ - age
suffix: db " years old", 10
suffix_len equ $ - suffix
