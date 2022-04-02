BITS 64
    section .text
    global strncmp
strncmp:
    MOV RCX, 0
loop:
    CMP BYTE[RDI], 0
    JE compare_null
    CMP BYTE[RSI], 0
    JE high
    MOV R10b, BYTE[RDI]
    MOV R11b, BYTE[RSI]
    CMP R10b, R11b
    JL low
    CMP R10b, R11b
    JG high
    CMP RCX, RDX
    JE equal
    INC RDI
    INC RSI
    INC RCX
    JMP loop
compare_null:
    CMP BYTE[RSI], 0
    JE equal
    MOV RAX, -1
    RET
equal:
    MOV RAX, 0
    RET
low:
    MOV RAX, -1
    RET
high:
    MOV RAX, 1
    RET