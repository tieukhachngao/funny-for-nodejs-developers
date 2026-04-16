%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE note, note_len
  EXIT

section .data
note: db "google.com", 10
note_len equ $ - note
