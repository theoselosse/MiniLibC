BITS 64
    section .text
    global memset
memset:
    MOV R10, RDI
    MOV RCX, 0
    JMP loop
loop:
    CMP RCX, RDX
    JE end
    MOV BYTE[RDI], SIL
    INC RDI
    INC RCX
    JMP loop
end:
    MOV RAX, R10
    RET