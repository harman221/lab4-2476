INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.386
.model flat, stdcall
.stack 4096

.data
    sum DWORD 0
.code
main PROC
    mov eax, 0
    mov ecx, 1

sum_loop:
    add eax, ecx
    inc ecx
    cmp ecx, 11
    jl  sum_loop

    call DumpRegs
    exit
main ENDP
END main