//Algoritmo realiza calculo de checksum de uma sequencia de N bytes.
//Quantidade N de bytes armazdenada em 0800H 
//Sequencia de bytes armazenada a partir de 0850H
//CHK = 0x100 – Soma dos Bytes
//Saída armazenada no registrador L
# ORG 800
# DB 05
# ORG 850
# DB 05, 03, 02, 09, 04
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   LXI H,0800
	   MOV C,M
	   LXI H,0850
	   MOV A,M
	   CALL SOMA
	   MOV L,A
	   LXI D,0100
	   MVI H,FF
	   MOV A,L
	   CMA
	   MOV L,A
	   INR L
	   DAD D
	   HLT

SOMA:	   INR L
	   ADC M
	   DCR C
	   JNZ SOMA
	   RZ
