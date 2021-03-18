//divisão de dois numeros de 8 bits
//IN -> reg A / reg B
//OUT -> resultado = reg C, resto = reg D
# ORG 2000
# BEGIN 2000
	   LXI SP, 7000
	   MVI A,07
	   MVI B,02
	   MVI C,00
	   CALL FUNC
	   MOV D,A
	   HLT

FUNC:      SUB B
	   CMP B
	   INR C
	   JNC FUNC
	   RC
	   
	   
