// Algoritmo converte a temperatura de graus Celsius para Fahrenheit
// Entrada da temperatura em Celsius no registrador C
// Saida da temperatura em Fahrenheit no registrador L
# ORG 2000
# BEGIN 2000
	   MVI C,19
	   MVI D,09
	   CALL MULTI
	   MVI B,05
	   MVI C,00
	   CALL FUNC
	   MOV D,A
	   MOV A,C
	   ADI 20
	   MOV L,A
	   HLT
// divisão de dois numeros de 8 bits
// IN -> reg A / reg B
// OUT -> resultado = reg C, resto = reg A

FUNC:	   SUB B
	   CMP B
	   INR C
	   JNC FUNC
	   RC
// multiplicação de dois números de 8 bits
// in -> reg C * reg D
// out -> resultado reg A

MULTI:	   MOV A,D
	   ADD B
	   MOV B,A
	   DCR C
	   JNZ MULTI
	   RZ
