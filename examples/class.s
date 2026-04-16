%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

get_item:
  mov rax, [rel foo_item]
  ret

set_item:
  mov [rel foo_item], rdi
  ret

print_item:
  call get_item
  mov r12, rax
  lea r13, [rel bar]
  cmp r12, r13
  je print_bar
  WRITE qux, qux_len
  ret

print_bar:
  WRITE bar, bar_len
  ret

_start:
  lea rdi, [rel bar]
  call set_item
  call print_item
  WRITE newline, 1
  lea rdi, [rel qux]
  call set_item
  call print_item
  WRITE newline, 1
  EXIT

section .data
foo_item: dq 0
bar: db "bar"
bar_len equ $ - bar
qux: db "qux"
qux_len equ $ - qux
newline: db 10
