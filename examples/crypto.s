%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE sha256_hello, sha256_hello_len
  EXIT

section .data
sha256_hello:
  db "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824", 10
sha256_hello_len equ $ - sha256_hello
