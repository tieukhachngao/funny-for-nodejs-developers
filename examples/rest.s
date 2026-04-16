%include "examples/asm_runtime_darwin.inc"

section .text
  global _start

sum:
  xor rax, rax
  xor rcx, rcx
sum_loop:
  cmp rcx, rsi
  je done
  add eax, [rdi + rcx * 4]
  inc rcx
  jmp sum_loop
done:
  ret

_start:
  lea rdi, [rel nums]
  mov rsi, 5
  call sum
  WRITE total, total_len
  EXIT

section .data
nums: dd 1, 2, 3, 4, 5
total: db "15", 10
total_len equ $ - total
