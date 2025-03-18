INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.386
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.code
main PROC
    ; Example parameters: 2 * 3 * 4 = 24
    mov eax, 2
    mov ebx, 3
    mov ecx, 4
    call MultiplyThree ; Result in EAX (24)
    call WriteDec      ; Prints "24"
    call Crlf
    INVOKE ExitProcess, 0
main ENDP

MultiplyThree PROC
    ; Multiplies EAX, EBX, ECX (result in EAX)
    mul ebx      ; EAX = EAX * EBX
    mul ecx      ; EAX = EAX * ECX
    ret
MultiplyThree ENDP

END main