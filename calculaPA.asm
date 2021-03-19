// O algoritmo calcula os primeiros N elementos de uma PA.
// a1 é armazenado em 0800H da memória
// n é armazenado em 0850H da memória
// r é armazenado em 0900H da memória
// Os elementos são armazenados a partir do endereço 5001
# ORG 800
# DB 02
# ORG 850
# DB 07
# ORG 900
# DB 04
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   LXI H,0800
	   MOV E,M
	   LXI H,0850
	   MOV C,M

LOOP:	   DCR C	// (n-1)
	   LXI H,0900
	   MOV D,M
	   PUSH B
	   CALL MULTI
	   POP B
	   ADD E
	   INR C
	   MVI H,50
	   MOV L,C
	   MOV M,A
	   DCR C
	   JNZ LOOP
	   HLT

MULTI:	   MOV A,D
	   ADD B
	   MOV B,A
	   DCR C
	   JNZ MULTI
	   RZ
