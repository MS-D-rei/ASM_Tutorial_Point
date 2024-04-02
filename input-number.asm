section .data
  userMsg db 'Please enter a number: '
  lenUserMsg equ $ - userMsg
  dispMsg db 'You have entered: '
  lenDispMsg equ $ - dispMsg

section .bss            ; Uninitialized data
  num resb 5

section .text
  global _start

_start:
  ;Output the message 'Please enter ...'
  mov eax, 4            ; system call number (sys_write)
  mov ebx, 1            ; file descriptor (stdout)
  mov ecx, userMsg      ; message to write
  mov edx, lenUserMsg   ; message length
  int 80h

  ;Read and store the user input
  mov eax, 3            ; system call (sys_read)
  mov ebx, 2
  mov ecx, num          ; 5 bytes(numeric, 1 for sign) of the info
  mov edx, 5
  int 80h

  ;Output the message 'You have entered: '
  mov eax, 4
  mov ebx, 1
  mov ecx, dispMsg
  mov edx, lenDispMsg
  int 80h

  ;Output the number entered
  mov eax, 4
  mov ebx, 1
  mov ecx, num
  mov edx, 5
  int 80h

  ;Exit code
  mov eax, 1            ; system call (sys_exit)
  mov ebx, 0
  int 80h
