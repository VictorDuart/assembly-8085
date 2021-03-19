//O algoritmo conta valores impares em um vetor de tamanho N
//N é armazenado no endereço 0800H
//O vetor é armazenado na faixa 0850 da memória
//Resultado armazenado no registrador D
# ORG 800
# DB 08
# ORG 850
# DB 05, 03, 02, 07, 09, 0A, FF, F0
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
	   CZ INCR
	   INR L
	   DCR C
	   JNZ LOOP
	   HLT

INCR:	   INR D
	   RET
