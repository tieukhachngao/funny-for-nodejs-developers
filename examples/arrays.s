// Generated Darwin x86_64 pure syscall assembly for examples/arrays.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.
.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq stdout_bytes(%rip), %rsi
  movq $70, %rdx
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
  .byte 91,49,32,50,32,51,32,52,32,53,93,10,91,49,32,50,32,51,32,52,32,53,93,10,91,51,32,52,93,10,91,49,32,50,32,51,32,52,32,53,32,54,32,55,93,10,91,45,50,32,45,49,32,48,32,49,32,50,32,51,32,52,32,53,32,54,32,55,93,10
stderr_bytes:
  .byte 0
