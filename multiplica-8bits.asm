// multiplicação de dois números de 8 bits
// in -> reg C * reg D
// out -> resultado reg A
# ORG 2000
# BEGIN 2000
	   MVI C,02
	   MVI D,03
	   CALL MULTI
	   MOV E,A
	   HLT

MULTI:	   MVI B, 00
	   MOV A,D
	   ADD B
	   MOV B,A
	   DCR C
	   JNZ MULTI
	   RZ
