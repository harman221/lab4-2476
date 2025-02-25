.386
.model flat, stdcall
.stack 4096

include Irvine32.inc

.code
main PROC
    ; Initialize registers with given values
    mov eax, 0x10    ; eax = 16
    mov ebx, 0x15    ; ebx = 21
    mov ecx, 0x02    ; ecx = 2
    mov edx, 0x09    ; edx = 9

    ; Perform operations
    add eax, ebx     ; eax = eax + ebx (16 + 21 = 37)
    add ecx, edx     ; ecx = ecx + edx (2 + 9 = 11)
    sub eax, ecx     ; eax = eax - ecx (37 - 11 = 26)

    ; Display register values
    call DumpRegs

    ; Unsigned Overflow and Carry Flag Demonstration
    ; Step 1: Initialize AL to 255 (0xFF)
    mov al, 0xFF
    call DumpRegs  ; Observe initial state

    ; Step 2: Add 1 to AL
    add al, 1
    call DumpRegs  ; Observe overflow

    ; Step 3: Subtract 1 from AL when AL is 0
    sub al, 1
    call DumpRegs  ; Observe changes

    ; Step 4: Set AL to 255 and subtract 1
    mov al, 0xFF
    sub al, 1
    call DumpRegs  ; Observe changes

    ; Exit program
    call ExitProcess
main ENDP
END main
