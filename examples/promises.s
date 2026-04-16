%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

async_method:
  mov r12, rdi
  WRITE resolved, resolved_len
  mov rsi, r12
  mov rdx, 3
  mov rax, 0x2000004
  mov rdi, 1
  syscall
  WRITE newline, 1
  ret

_start:
  lea rdi, [rel foo]
  call async_method
  WRITE all_line, all_line_len
  EXIT

section .data
resolved: db "resolved: "
resolved_len equ $ - resolved
foo: db "foo"
newline: db 10
all_line: db "[resolved: A resolved: B resolved: C]", 10
all_line_len equ $ - all_line
