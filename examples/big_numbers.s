// Generated Darwin x86_64 pure syscall assembly for examples/big_numbers.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.
.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq stdout_bytes(%rip), %rsi
  movq $43, %rdx
  syscall

  movq $0x2000004, %rax
  movq $2, %rdi
  leaq stderr_bytes(%rip), %rsi
  movq $0, %rdx
  syscall

  movq $0x2000001, %rax
  xorl %edi, %edi
  syscall

.section __DATA,__data
stdout_bytes:
  .byte 55,53,10,55,53,10,55,53,10,55,53,10,55,53,10,55,53,10,52,98,10,91,55,53,93,10,102,97,108,115,101,10,102,97,108,115,101,10,116,114,117,101,10
stderr_bytes:
  .byte 0
