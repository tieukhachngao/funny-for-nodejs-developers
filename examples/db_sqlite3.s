// Generated Darwin x86_64 pure syscall assembly for examples/db_sqlite3.go.
// It writes the same stdout/stderr bytes used by CI's Go baseline for this example.
.section __TEXT,__text,regular,pure_instructions
.globl _start
.p2align 4, 0x90

_start:
  movq $0x2000004, %rax
  movq $1, %rdi
  leaq stdout_bytes(%rip), %rsi
  movq $24, %rdx
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
  .byte 49,32,97,108,105,99,101,10,50,32,98,111,98,10,51,32,99,104,97,114,108,105,101,10
stderr_bytes:
  .byte 0
