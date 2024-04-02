; Assembly program is divided into three sections
; 1. data section.
; For declaring initialized data, constants.
; This data does not change at runtime.
; 2. bss section.
; For declaring variables.
; 3. text section.
; For keeping actual code.
; This section must begin with `global_start` to tell
; kernel where the program begins.

section .text
  global _start ;must be declared for linker (id)

_start: ;tells linker entry point
  mov edx, len ;message length
  mov ecx, msg ;message to write
  mov ebx, 1 ;file descriptor (stdout)
  mov eax, 4 ;system call number (sys_write)
  int 0x80 ;call kernel

  mov eax, 1 ;system call number (sys_exit) 
  int 0x80 ; call kernel

section .data
msg db 'Hello, world', 0xa ; string to be printed
len equ $ - msg ; length of the string
