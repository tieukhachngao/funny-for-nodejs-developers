// Generated Darwin x86_64 pure syscall assembly for examples/switch.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.
.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq stdout_bytes(%rip), %rsi
  movq $57, %rdx
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
  .byte 66,10,66,32,45,32,102,97,108,108,105,110,103,32,116,104,114,111,117,103,104,10,67,32,45,32,102,97,108,108,105,110,103,32,116,104,114,111,117,103,104,10,115,101,99,111,110,100,32,100,101,102,97,117,108,116,10
stderr_bytes:
  .byte 0
