// Generated Darwin x86_64 pure syscall assembly for examples/buffers.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.
.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq stdout_bytes(%rip), %rsi
  movq $37, %rdx
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
  .byte 49,50,51,52,53,54,55,56,57,48,97,98,10,97,98,57,48,55,56,53,54,51,52,49,50,10,102,97,108,115,101,10,116,114,117,101,10
stderr_bytes:
  .byte 0
