BITS 64
    section .text
    global strlen

strlen:
    XOR RAX, RAX
loop:
    CMP [RDI + RAX], BYTE 0
    JE end
    INC RAX
    JMP loop
end:
    RET
