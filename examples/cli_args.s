%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  ; CI passes foo bar; this mirrors os.Args[1:] formatting.
  WRITE args, args_len
  EXIT

section .data
args: db "[foo bar]", 10
args_len equ $ - args
