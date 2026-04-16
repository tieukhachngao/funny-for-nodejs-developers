%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  ; API_KEY is unset in CI, matching Go's empty getenv output.
  WRITE newline, 1
  EXIT

section .data
newline: db 10
