BITS 64
    section .text
    global rindex
rindex:
    XOR	RAX, RAX
last:
	CMP	BYTE [RDI], 0x00
	JE	loop
	INC	RDI
	JMP	last
loop:
	CMP SIL, 0x00
    JE end
	DEC	RDI
	CMP	BYTE [RDI], SIL
	JE	end
	CMP	BYTE [RDI], 0x00
	JE	endno
	JMP	loop
end:
	MOV	RAX, RDI
	RET
endno:
	MOV	RAX, 0x00
	RET