section .data
    msg db'Hello world I am written in assembly!', 0x0A 
    len equ $ - msg                                     ; len of message

section .text
    global _start


_start:
; write system call to print the message
mov rax, 1  
mov rdi, 1
mov rsi, msg
mov rdx, len
syscall
; exit syscall  to end program
mov rax, 60
xor rdi, rdi
syscall
