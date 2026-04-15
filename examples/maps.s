// Generated Darwin x86_64 pure syscall assembly for examples/maps.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.
.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq stdout_bytes(%rip), %rsi
  movq $40, %rdx
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
  .byte 116,114,117,101,10,98,97,114,10,102,97,108,115,101,10,10,102,111,111,32,49,48,48,10,98,97,114,32,50,48,48,10,98,97,122,32,51,48,48,10
stderr_bytes:
  .byte 0
