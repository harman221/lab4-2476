INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.386
.model flat, stdcall
.stack 4096

.data
msg BYTE "Assembly Programming is Fun!",0

.code
main PROC
    call ClrScr       ; Clear the screen

    ; Print string
    mov edx, OFFSET msg
    call WriteString  ; Prints the message
    call Crlf

    ; Display 35 in binary, decimal, and hex
    mov eax, 35
    call WriteBin     ; Prints "00000000000000000000000000100011"
    call Crlf
    call WriteDec     ; Prints "35"
    call Crlf
    call WriteHex     ; Prints "00000023"
    call Crlf

    exit
main ENDP
END main