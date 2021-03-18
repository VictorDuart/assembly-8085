//O algortimo implementa a seguinte expressão
//Y = 0,1*B+0,4*C+0,5*D
//B é armazenado no end 1000
//C é armazenado no end 1001
//D é armazenado no end 1002
//Y é armazenado no end 1060

# ORG 1000
# DB 14, 0F, 0A
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   LXI H,1000
	   MOV A,M
	   MVI B,0A
	   CALL FUNC
	   LXI H,1050
	   MOV M,C
	   MVI B,00
	   MVI C,00
	   LXI H,1001
	   MOV C,M
	   MVI D,02
	   CALL MULTI
	   MVI B,05
	   CALL FUNC
	   LXI H,1051
	   MOV M,C
	   MVI B,00
	   MVI C,00
	   LXI H,1002
	   MOV A,M
	   MVI B,02
	   CALL FUNC
	   LXI H,1052
	   MOV M,C
	   LXI H,1050
	   MOV A,M
	   LXI H,1051
	   ADD M
	   LXI H,1052
	   ADD M
	   LXI H,1060
	   MOV M,A
	   HLT
// divisão de dois numeros de 8 bits
// IN -> reg A / reg B
// OUT -> resultado = reg C, resto = reg D

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
