SRC equ 16384	; Sets a constant
org $6000	; Where our program will begin in the computer memory
	ld bc,STRING
	ld de,SRC
	ld hl,SPACE

LOOP	; Marker
	ld a,(bc)
	cp 0
	jr z,EXIT
	rst $10
	ld a,(hl)
	rst $10
	inc bc
	inc de
	jr LOOP
EXIT
	ret
STRING
	defb "Your Name rulez!"
	defb 13,0 ; zero not 'o'
SPACE
	defb 13,0
