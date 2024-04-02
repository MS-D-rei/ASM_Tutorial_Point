; | Directive | Purpose           | Storage Space
; | DB        | Define Byte       | 1 bytes
; | DW        | Define Word       | 2 bytes
; | DD        | Define Doubleword | 4 bytes
; | DQ        | Define Quadword   | 8 bytes
; | DT        | Define Ten Bytes  | 10 bytes

section .data
yes db 'y'
number1To5 dw 12345           ;12345D = 3039H
neg_number1To5 dw -12345
big_number dq 123456789
double_number1 dd 1.234
double_number2 dq 123.456
stars10 times 10 db '*'

section .text
  global _start

_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, yes
  mov edx, 1
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, stars10 
  mov edx, 10
  int 0x80

  mov eax, 1
  int 0x80
