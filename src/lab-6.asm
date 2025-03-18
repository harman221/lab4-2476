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


CalculateSum PROC
    mov eax, 0      
    mov ecx, 1      

sum_loop:
    add eax, ecx    
    inc ecx         
    cmp ecx, 11     
    jl  sum_loop    

    call DumpRegs   
    ret
CalculateSum ENDP


PrintTriangle PROC
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

    ret
PrintTriangle ENDP

main PROC
    call CalculateSum  
    call PrintTriangle 
    exit              
main ENDP

END main