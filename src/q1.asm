INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.386
.stack 4096

.code
main PROC
    ; initialize registers
    mov eax, 10h     ; EAX = 0x10
    mov ebx, 15h     ; EBX = 0x15
    mov ecx, 02h     ; ECX = 0x02
    mov edx, 09h     ; EDX = 0x09

    ; arithmetic operations
    add eax, ebx     ; EAX = EAX + EBX (0x25)
    add ecx, edx     ; ECX = ECX + EDX (0x0B)
    sub eax, ecx     ; EAX = EAX - ECX (0x1A)

    call DumpRegs
    exit
main ENDP
END main