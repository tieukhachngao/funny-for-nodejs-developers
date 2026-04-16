%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  xor r12, r12
  lea r13, [rel letters]

each_loop:
  cmp r12, 3
  je after_each
  mov byte [rel index_digit], '0'
  add byte [rel index_digit], r12b
  mov al, [r13 + r12]
  mov [rel value_char], al
  WRITE index_digit, 1
  WRITE space, 1
  WRITE value_char, 1
  WRITE newline, 1
  inc r12
  jmp each_loop

after_each:
  WRITE mapped, mapped_len
  WRITE filtered, filtered_len
  WRITE reduced, reduced_len
  EXIT

section .data
letters: db "abc"
index_digit: db "0"
value_char: db "a"
space: db " "
newline: db 10
mapped: db "[A B C]", 10
mapped_len equ $ - mapped
filtered: db "[a c]", 10
filtered_len equ $ - filtered
reduced: db "[A C]", 10
reduced_len equ $ - reduced
