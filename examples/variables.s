section .text
  global _start

_start:
  lea r12, [rel foo]
  lea r13, [rel bar]
  lea r14, [rel baz]
  lea r15, [rel qux]

  mov rax, 0x2000001
  xor rdi, rdi
  syscall

section .data
foo:
  db "foo", 0
bar:
  db "foo", 0
baz:
  db "bar", 0
qux:
  db "qux", 0
