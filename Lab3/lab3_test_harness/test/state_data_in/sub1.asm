	.ORIG x3006
	AND R0, R0, #0
	BRnzp PROG
SUB	AND R3, R3, #0
LOOP	ADD R3, R1, R3
	ADD R2, R2, #-1
	BRp LOOP
	RET
PROG	ADD R2, R2, #1
	ADD R1, R1, #2
	JSR SUB
	STB R3, R6, #-2
	HALT
	.END
	