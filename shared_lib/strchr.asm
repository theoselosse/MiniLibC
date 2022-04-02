BITS 64
    section .text
    global strchr

strchr:
    XOR RAX, RAX
loop:
    CMP BYTE [RDI], SIL
    JE end
    CMP	BYTE [RDI], 0x00
    JE endno
    INC RDI
    JMP loop
end:
    MOV RAX, RDI
    RET
endno:
	MOV	RAX, 0x00
	RET