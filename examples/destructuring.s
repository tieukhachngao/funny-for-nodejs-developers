%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

read_obj:
  WRITE pair, pair_len
  ret

_start:
  WRITE pair, pair_len
  call read_obj
  EXIT

section .data
pair: db "foo bar", 10
pair_len equ $ - pair
