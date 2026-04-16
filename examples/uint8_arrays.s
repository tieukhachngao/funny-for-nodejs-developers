%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE zeros, zeros_len
  WRITE copied, copied_len
  WRITE sub, sub_len
  WRITE sub2, sub2_len
  WRITE copied, copied_len
  WRITE filled, filled_len
  WRITE length, length_len
  EXIT

section .data
zeros: db "[0 0 0 0 0 0 0 0 0 0]", 10
zeros_len equ $ - zeros
copied: db "[0 1 2 3 0 0 0 0 0 0]", 10
copied_len equ $ - copied
sub: db "[2 3 0 0 0 0 0 0]", 10
sub_len equ $ - sub
sub2: db "[2 3]", 10
sub2_len equ $ - sub2
filled: db "[0 1 2 3 0 9 9 9 9 9]", 10
filled_len equ $ - filled
length: db "10", 10
length_len equ $ - length
