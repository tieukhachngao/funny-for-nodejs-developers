%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE sample, sample_len
  EXIT

section .data
sample:
  db "1547717063", 10
  db "2019-01-17 09:24:23 +0000 UTC", 10
  db "2019-01-31 09:24:23 +0000 UTC", 10
  db "01/17/2019", 10
sample_len equ $ - sample
