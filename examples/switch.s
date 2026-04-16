section .text
  global _start

write:
  mov rax, 0x2000004
  mov rdi, 1
  syscall
  ret

_start:
  mov bl, 'b'

  cmp bl, 'a'
  je first_a
  cmp bl, 'b'
  je first_b
  cmp bl, 'c'
  je first_c
  lea rsi, [rel first_default]
  mov rdx, first_default_len
  call write
  jmp second_switch

first_a:
  lea rsi, [rel a_line]
  mov rdx, a_line_len
  call write
  jmp second_switch

first_b:
  lea rsi, [rel b_line]
  mov rdx, b_line_len
  call write
  jmp second_switch

first_c:
  lea rsi, [rel c_line]
  mov rdx, c_line_len
  call write

second_switch:
  cmp bl, 'a'
  je fall_a
  cmp bl, 'b'
  je fall_b
  cmp bl, 'c'
  je fall_c
  jmp fall_default

fall_a:
  lea rsi, [rel fall_a_line]
  mov rdx, fall_a_line_len
  call write
fall_b:
  lea rsi, [rel fall_b_line]
  mov rdx, fall_b_line_len
  call write
fall_c:
  lea rsi, [rel fall_c_line]
  mov rdx, fall_c_line_len
  call write
fall_default:
  lea rsi, [rel second_default]
  mov rdx, second_default_len
  call write

  mov rax, 0x2000001
  xor rdi, rdi
  syscall

section .data
a_line:
  db "A", 10
a_line_len equ $ - a_line
b_line:
  db "B", 10
b_line_len equ $ - b_line
c_line:
  db "C", 10
c_line_len equ $ - c_line
first_default:
  db "first default", 10
first_default_len equ $ - first_default
fall_a_line:
  db "A - falling through", 10
fall_a_line_len equ $ - fall_a_line
fall_b_line:
  db "B - falling through", 10
fall_b_line_len equ $ - fall_b_line
fall_c_line:
  db "C - falling through", 10
fall_c_line_len equ $ - fall_c_line
second_default:
  db "second default", 10
second_default_len equ $ - second_default
