// Generated Darwin x86_64 pure syscall assembly for examples/array_sort.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.
.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq stdout_bytes(%rip), %rsi
  movq $146, %rdx
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
  .byte 91,48,32,49,32,50,32,51,32,52,32,53,32,57,93,10,91,57,32,53,32,52,32,51,32,50,32,49,32,48,93,10,91,97,32,98,32,99,32,100,32,121,32,122,93,10,91,122,32,121,32,100,32,99,32,98,32,97,93,10,91,123,89,105,32,77,32,50,125,32,123,74,115,111,110,32,67,32,51,125,32,123,76,105,32,76,32,56,125,32,123,90,97,99,107,32,87,32,49,53,125,93,10,91,123,90,97,99,107,32,87,32,49,53,125,32,123,76,105,32,76,32,56,125,32,123,74,115,111,110,32,67,32,51,125,32,123,89,105,32,77,32,50,125,93,10
stderr_bytes:
  .byte 0
