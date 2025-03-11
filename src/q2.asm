INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.386
.stack 4096

.code
main PROC
    mov al, 0FFh
    add al, 1
    call DumpRegs
    
    sub al, 1
    call DumpRegs

    sub al, 1
    call DumpRegs

    exit
main ENDP
END main