	.ORG $30
	LDAA #$15
	STAA $05
	LDAA #$05
	STAA $06
	LDAA #$12
	STAA $07
	LDAA #$FF
	STAA $08
	LDX #$0000
	STX $0100
	LDAA $05,X
	STAA $00
LOOP LDX $0100
	LDAA $06,X
	CMPA #$00
	BLT FIN
	LDAA $06,X
	CMPA $00
	BLT CAND
CONT INX
	STX $0100
	BRA LOOP
CAND STAA $00
	BRA CONT
FIN	JSR SUB
	BRA FIN2
SUB LDX $FFFF
LOOP2 DEX
	INX
	DEX
	INX
	DEX
	BNE LOOP2
	RTS
FIN2 .END