INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.386
.model flat, stdcall
.stack 4096

.code
main PROC
    ; Initialize AX to 0FFh (AL = 0xFF)
    mov ax, 0FFh
    call DumpRegs       ; Show initial state

    ; Add 1 to AX (AX = 0100h, AL = 00h)
    add ax, 1
    call DumpRegs       ; CF=0 (16-bit no carry), ZF=0

    ; Subtract 1 from AX (AX = 00FFh, AL = FFh)
    sub ax, 1
    call DumpRegs       ; CF=0

    ; Add 1 to AL (AL = 00h, overflow)
    add al, 1
    call DumpRegs       ; CF=1, ZF=1

    ; Initialize BH to 6Ch
    mov bh, 6Ch
    call DumpRegs       ; BH=6Ch

    ; Add 95h to BH (BH = 01h, overflow)
    add bh, 95h
    call DumpRegs       ; CF=1

    ; Set AL to 2
    mov al, 2
    call DumpRegs       ; AL=02h

    ; Subtract 3 from AL (AL = FFh, underflow)
    sub al, 3
    call DumpRegs       ; CF=1, SF=1

    exit
main ENDP
END main