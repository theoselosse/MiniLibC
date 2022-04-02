BITS 64
    section .text
    global memcpy
memcpy:
    MOV R10, RDI
    MOV RCX, 0
    JMP loop
loop:
    CMP RCX, RDX
    JE end
    MOV R11b, BYTE[RSI]
    MOV BYTE[RDI], R11b
    INC RDI
    INC RCX
    INC RSI
    JMP loop
end:
    MOV RAX, R10
    RET