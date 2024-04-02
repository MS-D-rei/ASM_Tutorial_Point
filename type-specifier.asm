section .data         ; store the starting address of data seg
name db 'Zara Ali '

section .text
  global _start       ; must be declared for linker (id)

_start:               ; tells linker where to start (like main in C)

  ;writing the name 'Zara Ali'
  mov eax, 4          ; system_write
  mov ebx, 1          ; file descriptor (stdout)
  mov ecx, name       ; content
  mov edx, 9          ; content length
  int 0x80            ; execute (call kernel)

  mov [name], dword 'Nuha'
  
  ;Output the name 'Nuha Ali'
  mov eax, 4
  mov ebx, 1
  mov ecx, name
  mov edx, 8
  int 0x80

  mov eax, 1
  int 0x80
