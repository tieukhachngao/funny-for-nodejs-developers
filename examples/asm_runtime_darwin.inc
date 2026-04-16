%macro WRITE 2
  mov rax, 0x2000004
  mov rdi, 1
  lea rsi, [rel %1]
  mov rdx, %2
  syscall
%endmacro

%macro WRITE_ERR 2
  mov rax, 0x2000004
  mov rdi, 2
  lea rsi, [rel %1]
  mov rdx, %2
  syscall
%endmacro

%macro EXIT 0
  mov rax, 0x2000001
  xor rdi, rdi
  syscall
%endmacro
