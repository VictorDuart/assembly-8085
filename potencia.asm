// Algortimo realiza a expressão Y = A^n com entrada e saída de 8 bits
// A é armazenado em 1000
// n é armazenado em 1001
//Y é armazenado em 1050
# ORG 1000
# DB 03, 04
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   LXI H,1000
	   MOV C,M
	   MOV D,M
	   LXI H,1001
	   MOV E,M
	   DCR E
	   CALL POW
	   LXI H,1050
	   MOV M,A
	   HLT

POW:	   PUSH B
	   CALL MULTI
	   POP B
	   MOV C,A
	   LXI H,1000
	   MOV D,M
	   DCR E
	   JNZ POW
	   RZ

MULTI:	   MOV A,D
	   ADD B
	   MOV B,A
	   DCR C
	   JNZ MULTI
	   RZ
