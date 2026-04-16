%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE replaced, replaced_len
  WRITE matched, matched_len
  WRITE numbers, numbers_len
  EXIT

section .data
replaced: db "quxbar", 10
replaced_len equ $ - replaced
matched: db "true", 10
matched_len equ $ - matched
numbers: db "[111 222 333]", 10
numbers_len equ $ - numbers
