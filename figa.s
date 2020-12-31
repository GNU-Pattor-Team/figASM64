/* vim: set filetype=gas : */

.data
  figa: .string "Che schifo la figa\n"
  figa_len: .quad .- figa

  linux: .string "Meglio Linux!\n"
  linux_len: .long .- linux
  

.text
  .globl _start


_start:
  push %rbp
  mov %rsp, %rbp

  mov $1, %rax
  mov $1, %rdi
  lea figa, %rsi
  mov figa_len, %rdx
  syscall

  mov $1, %rax
  lea linux, %rsi
  mov linux_len, %rdx
  syscall

  xor %rdi, %rdi
  mov $60, %rax
  syscall
 
