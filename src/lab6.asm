INCLUDE Irvine32.inc

.data
    sum DWORD 0

.code
main PROC
    mov eax, 0      ; Initialize sum to 0
    mov ecx, 1      ; Counter starts at 1

sum_loop:
    add eax, ecx    ; Add counter value to EAX
    inc ecx         ; Increment counter
    cmp ecx, 11     ; Check if counter reaches 11
    jl sum_loop     ; Loop while ECX < 11

    call DumpRegs   ; Display register values

    exit            ; Exit program
main ENDP
END main