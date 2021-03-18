// Algoritmo realiza a seguinte opera��o matricial
// Y = A + B - C
// Onde A B e C s�o matrizes 2x2
// A matriz A � armazenada na faixa de mem�ria iniciada em 1000H
// A matriz B � armazenada na faixa de mem�ria iniciada em 2000H
// A matriz C � armazenada na faixa de mem�ria iniciada em 3000H
// A matriz Y � armazenada na faixa de mem�ria iniciada em 6000H
# ORG 1000
# DB 01, 02, 03, 04
# ORG 2000
# DB 05, 06, 07, 08
# ORG 3000
# DB 04, 03, 02, 01
# ORG 4000
# BEGIN 4000
	   MVI B,04
	   MVI C,10
	   MVI D,20
	   MVI E,30
	   MVI L,00

LOOP:	   MOV H,C
	   MOV A,M
	   MOV H,D
	   ADC M
	   MOV H,E
	   SUB M
	   MVI H,60
	   MOV M,A
	   INR L
	   DCR B
	   JNZ LOOP
	   HLT
