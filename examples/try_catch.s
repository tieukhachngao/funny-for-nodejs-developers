%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

foo:
  cmp rdi, 0
  je ok
  lea rax, [rel my_error]
  ret
ok:
  xor rax, rax
  ret

_start:
  mov rdi, 1
  call foo
  test rax, rax
  jz exit
  WRITE prefix, prefix_len
  WRITE my_error, my_error_len
  WRITE newline, 1
exit:
  EXIT

section .data
prefix: db "caught error: "
prefix_len equ $ - prefix
my_error: db "my error"
my_error_len equ $ - my_error
newline: db 10
