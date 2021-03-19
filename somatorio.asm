// Algoritmo soma os valores do vetor
// Tamanho do vetor no espa�o de mem�ria 800, o tamanho pode variar 1 < = N <= FF
// Vetor armazenado na faixa de mem�ria iniciada em 850
// Resultado armazenado no registrador L
# ORG 800
# DB 08
# ORG 850
# DB FF, FF, FF, FF, FF, FF, FF, FF
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   MVI E,00
	   LXI H,0800
	   MOV C,M
	   LXI H,0850
	   MOV A,M
	   CALL SOMA
	   MVI H,00
	   MOV H,E
	   MOV L,A
	   HLT
// Realiza a soma dos vetores
// Entrada -> reg HL com o endere�o do primeiro elemento do vetor, reg C //tamanho do vetor
// Sa�da -> Acumulador com o resultado da soma

SOMA:	   INR L
	   ADD M
	   CC ACRESC
	   DCR C
	   JNZ SOMA
	   RZ

ACRESC:	   INR E
	   RET
