# ORG 1000
# DB 02, 02, 03, 04
# ORG 2000
# DB 04, 03, 02, 01
# ORG 1500
# DB 00, 10
# ORG 2500
# DB 00, 20
# ORG 3000
# BEGIN 3000
	   LXI SP,7000

LOOP:	   LHLD 1500
	   MOV C,M
	   LHLD 2500
	   MOV D,M
	   PUSH B
	   CALL MULTI
	   POP B
	   LXI H,1050
	   MOV M,A
	   LXI H,1500
	   INR M
	   LXI H,2500
	   INR M
	   INR M
	   JMP LOOP
	   HLT

MULTI:	   MVI B,00
	   MOV A,D
	   ADD B
	   MOV B,A
	   DCR C
	   JNZ MULTI
	   RZ
