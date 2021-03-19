// O Algoritmo conta valores pares em uma sequ�ncia
// O tamanho N da sequencia � armazenada no endere�o 0800 da mem�ria
// A sequ�ncia � armazenada na faixa de mem�ria iniciada pelo endere�o 0850
// O resultado � armazenado no registrador H
# ORG 800
# DB 07
# ORG 850
# DB 05, 03, 02, 05, 09, 04, 05
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   MVI B,01	// mascara
	   MVI D,00	// contador
	   LXI H,0800
	   MOV C,M
	   LXI H,0850

LOOP:	   MOV A,M
	   ANA B
	   CMP B
	   CNZ INCR
	   INR L
	   DCR C
	   JNZ LOOP
	   MOV H,D
	   HLT

INCR:	   INR D
	   RET
