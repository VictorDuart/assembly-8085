// ORDENA O VETOR UTILIZANDO O MÉTODO BUBBLE SORT
# ORG 3000
# DB 05
# ORG 4000
# DB 09, 01, 06, 04, 08
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   LXI H,3000
	   MOV D,M
	   DCR D
// LOOP EXTERIOR

INICIO:	   DCR D
	   JZ FIM
	   MOV C,M
	   DCR C
	   LXI H,4000
// LOOP INTERIOR

COMPARA:	   MOV A,M
	   INR L
	   CMP M
	   CNC TROCA
	   CC ALTERNA
	   DCR C
	   JNZ COMPARA
	   JZ INICIO
// FUNÇÃO QUE REALIZA A TROCA NA MEMÓRIA SE UM VALOR FOR MENOR QUE O VALOR DO ACUMULADOR

TROCA:	   MOV B,M
	   MOV M,A
	   DCR L
	   MOV M,B
	   INR L
	   RET
// FUNÇÃO QUE ALTERNA O VALOR DO ACUMULADOR COM REG B CASO O VALOR CONTIDO NELE SEJA MENOR QUE O PRÓXIMO

ALTERNA:	   MOV B,M
	   MOV A,B
	   RET
// APÓS ORDENAR OS VALORES NA FAIXA 4000-4004, ESSA PARTE DO CÓDIGO TRANSFERE OS DADOS DESSA FAIXA PARA A FAIXA 5000-5004 DA MEMÓRIA

FIM:	   LXI H,3000
	   MOV C,M
	   LXI H,4000
	   LXI D,5000
	   MOV A,M
	   STAX D
	   DCR C
// LOOP PARA TRANSFERIR DADO POR DADO DA MEMÓRIA

ORDENA:	   INR L
	   INR E
	   MOV A,M
	   STAX D
	   DCR C
	   JNZ ORDENA
	   HLT