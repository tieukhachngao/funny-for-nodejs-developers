%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

hello:
  lea rax, [rel fail_name]
  cmp rdi, rax
  je fail
  WRITE hello_bob, hello_bob_len
  ret
fail:
  WRITE_ERR failed, failed_len
  ret

_start:
  lea rdi, [rel bob_name]
  call hello
  lea rdi, [rel fail_name]
  call hello
  EXIT

section .data
bob_name: db "bob", 0
fail_name: db "fail", 0
hello_bob: db "hello bob", 10
hello_bob_len equ $ - hello_bob
failed: db "failed", 10
failed_len equ $ - failed
