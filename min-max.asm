# ORG 3000
# DB 05
# ORG 4000
# DB FF, 06, 01, 04, 08
# ORG 2000
# BEGIN 2000
	   LXI SP,7000
	   LXI H,3000
	   MOV C,M
	   DCR C
	   MOV D,M
	   DCR D
	   LXI H,4000
	   MOV A,M
	   CALL MIN
	   MOV E,A
	   LXI H,4000
	   MOV A,M
	   CALL MAX
	   MOV H,A
	   MOV L,E
	   HLT
// busca o menor numero na sequencia de N bytes
// entrada - C = N bytes, HL = endereço inicial
// saída - A = menor numero

MIN:	   INR L
	   CMP M
	   CNC TROCA
	   DCR C
	   JNZ MIN
	   RET
// busca o maior numero na sequencia de N bytes
// entrada - C = N bytes, HL = endereço inicial
// saída - A = maior numero

MAX:	   INR L
	   CMP M
	   CC TROCA
	   DCR C
	   JNZ MAX
	   RET
// função auxiliar que realiza a troca entre registradores
// entrada - reg A reg B par HL
// saida - reg A reg B

TROCA:	   MOV B,A
	   MOV A,M
	   RET
