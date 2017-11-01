org $6000
ld bc,DATA
ld a,(bc)
nop
nop
ret

DATA
	defb 0	; Zero not 'o'
