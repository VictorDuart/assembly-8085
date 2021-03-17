//divisão de dois numeros de 8 bits
//IN -> reg A / reg B
//OUT -> resultado = reg C, resto = reg D
# ORG 2000
# BEGIN 2000
	   MVI A,07
	   MVI B,02
	   MVI C,00

LOOP:	   SUB B
	   CMP B
	   INR C
	   JNC LOOP
	   MOV D,A
	   HLT
