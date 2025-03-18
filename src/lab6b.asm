INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.stack 4096

.data

.code
main PROC
    mov ecx, 1

outer_loop:
    push ecx
    mov ebx, ecx

inner_loop:
    mov al, '*'
    call WriteChar
    dec ebx
    jnz inner_loop

    call Crlf
    pop ecx
    inc ecx
    cmp ecx, 6
    jne outer_loop

    exit
main ENDP
END main