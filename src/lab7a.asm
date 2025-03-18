INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.386
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.code
main PROC
    ; Push values onto the stack (30h, 20h, 10h)
    push 10h
    push 20h
    push 30h

    ; Pop and print values (LIFO order)
    pop eax
    call WriteHex   ; Prints "30"
    call Crlf

    pop eax
    call WriteHex   ; Prints "20"
    call Crlf

    pop eax
    call WriteHex   ; Prints "10"
    call Crlf

    INVOKE ExitProcess, 0
main ENDP
END main