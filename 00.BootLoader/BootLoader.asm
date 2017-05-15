[ORG 0x00]	;
[BITS 16]	;

SECTION .text	;

jmp 0x07C0:START	;

START:
	mov ax, 0x07C0	;
	mov ds, ax	;
	mov ax, 0XB800	;
	mov es, ax	;

mov byte [ es:0x00 ], 'M'	;
mov byte [ es:0x01 ], 0x4A	;

jmp $	;

times 510 - ( $ - $$ ) db 0x00	;

db 0x55
db 0xAA
