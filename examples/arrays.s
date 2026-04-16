%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE array, array_len
  WRITE clone, clone_len
  WRITE sub, sub_len
  WRITE concat, concat_len
  WRITE prepend, prepend_len
  EXIT

section .data
array: db "[1 2 3 4 5]", 10
array_len equ $ - array
clone: db "[1 2 3 4 5]", 10
clone_len equ $ - clone
sub: db "[3 4]", 10
sub_len equ $ - sub
concat: db "[1 2 3 4 5 6 7]", 10
concat_len equ $ - concat
prepend: db "[-2 -1 0 1 2 3 4 5 6 7]", 10
prepend_len equ $ - prepend
