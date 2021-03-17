// Algoritmo soma os valores do vetor
// Tamanho do vetor no espa�o de mem�ria 800
// Vetor armazenado na faixa de mem�ria iniciada em 850
// Resultado armazenado no registrador L
# ORG 800
# DB 07
# ORG 850
# DB 05, 03, 02, 09, 04, 06, 07
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   LXI H,0800
	   MOV C,M
	   LXI H,0850
	   MOV A,M
	   CALL SOMA
	   MOV L,A
	   HLT

//Realiza a soma dos vetores
//Entrada -> reg HL com o endere�o do primeiro elemento do vetor, reg C //tamanho do vetor
//Sa�da -> Acumulador com o resultado da soma
SOMA:	   INR L
	   ADC M
	   DCR C
	   JNZ SOMA
	   RZ
