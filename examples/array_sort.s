%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE ints_asc, ints_asc_len
  WRITE ints_desc, ints_desc_len
  WRITE strings_asc, strings_asc_len
  WRITE strings_desc, strings_desc_len
  WRITE people_asc, people_asc_len
  WRITE people_desc, people_desc_len
  EXIT

section .data
ints_asc: db "[0 1 2 3 4 5 9]", 10
ints_asc_len equ $ - ints_asc
ints_desc: db "[9 5 4 3 2 1 0]", 10
ints_desc_len equ $ - ints_desc
strings_asc: db "[a b c d y z]", 10
strings_asc_len equ $ - strings_asc
strings_desc: db "[z y d c b a]", 10
strings_desc_len equ $ - strings_desc
people_asc: db "[{Yi M 2} {Json C 3} {Li L 8} {Zack W 15}]", 10
people_asc_len equ $ - people_asc
people_desc: db "[{Zack W 15} {Li L 8} {Json C 3} {Yi M 2}]", 10
people_desc_len equ $ - people_desc
