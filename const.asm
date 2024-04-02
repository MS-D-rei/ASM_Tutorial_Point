section .data
; 0xA (ASCII table) => NL line feed, new line
; 0xD (ASCII table) => carriage return
msg1 db 'Hello, programmers! ', 0xA, 0xD
lenMsg1 equ $ - msg1
msg2 db 'Welcome to the world of ', 0xA, 0xD
lenMsg2 equ $ - msg2
msg3 db 'Linux assembly programming!', 0xA, 0xD
lenMsg3 equ $ - msg3

SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1

section .text
  global _start

_start:
  mov eax, SYS_WRITE
  mov ebx, STDOUT
  mov ecx, msg1
  mov edx, lenMsg1
  int 0x80

  mov eax, SYS_WRITE
  mov ebx, STDOUT
  mov ecx, msg2
  mov edx, lenMsg2
  int 0x80

  mov eax, SYS_WRITE
  mov ebx, STDOUT
  mov ecx, msg3
  mov edx, lenMsg3
  int 0x80

  mov eax, SYS_EXIT
  int 0x80
