org $6000		; Start of code (6x4096 in decimal)
	ld a,7		; Colour seven is white ink and black paper
	ld (23693),a	; This sets the screen colour as defined by the accumulator (a)
	call 3503	; Calls a routine to clear the screen
	ld a,1		; One is blue
	call 8859	; We'll set the border colour to blue
	ld bc,STRING	; bc points to the STRING data in memory
LOOP			; Main loop
	ld a,(bc)	; Load a with the byte in location bc
	cp 0		; Compare a to zero (end of STRING data)
	jr z,EXIT	; If equal to zero then jump to EXIT
	rst $10		; Output a to screen
	inc bc		; Increase bc
	jr LOOP		; Jump to LOOP
EXIT
	ret
STRING
	defb "Your Name rules!"
	defb 13,0	; 13 is new line and 0 the end of data



