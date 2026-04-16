%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE foo_line, foo_line_len
  WRITE qux_line, qux_line_len
  EXIT

section .data
foo_line: db "foo: bar", 10
foo_line_len equ $ - foo_line
qux_line: db "qux: true", 10
qux_line_len equ $ - qux_line
