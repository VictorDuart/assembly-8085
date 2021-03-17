// multiplica��o de dois n�meros de 8 bits
// in -> reg C * reg D
// out -> resultado reg E
# ORG 2000
# BEGIN 2000
	   MVI C,02
	   MVI D,03
	   CALL MULTI
	   MOV E,A
	   HLT

MULTI:	   MOV A,D
	   ADD B
	   MOV B,A
	   DCR C
	   JNZ MULTI
	   RZ
