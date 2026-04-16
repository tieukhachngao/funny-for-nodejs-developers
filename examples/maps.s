%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE true_line, true_line_len
  WRITE bar, bar_len
  WRITE false_line, false_line_len
  WRITE blank, 1
  WRITE foo_line, foo_line_len
  WRITE bar_line, bar_line_len
  WRITE baz_line, baz_line_len
  EXIT

section .data
true_line: db "true", 10
true_line_len equ $ - true_line
false_line: db "false", 10
false_line_len equ $ - false_line
bar: db "bar", 10
bar_len equ $ - bar
blank: db 10
foo_line: db "foo 100", 10
foo_line_len equ $ - foo_line
bar_line: db "bar 200", 10
bar_line_len equ $ - bar_line
baz_line: db "baz 300", 10
baz_line_len equ $ - baz_line
