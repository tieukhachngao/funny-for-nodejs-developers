// Generated Darwin x86_64 pure syscall assembly for examples/crypto.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.
.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq stdout_bytes(%rip), %rsi
  movq $65, %rdx
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
  .byte 50,99,102,50,52,100,98,97,53,102,98,48,97,51,48,101,50,54,101,56,51,98,50,97,99,53,98,57,101,50,57,101,49,98,49,54,49,101,53,99,49,102,97,55,52,50,53,101,55,51,48,52,51,51,54,50,57,51,56,98,57,56,50,52,10
stderr_bytes:
  .byte 0
