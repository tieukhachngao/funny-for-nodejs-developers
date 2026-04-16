%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

_start:
  WRITE stream_output, stream_output_len
  EXIT

section .data
stream_output:
  db "foobar", 10
  db "received: abc", 10
  db "received: xyc", 10
stream_output_len equ $ - stream_output
