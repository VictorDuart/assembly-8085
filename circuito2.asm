# ORG 2500
# INA: DB 01
# ORG 2501
# INB: DB 02
# ORG 2502
# INC: DB 03
# ORG 2503
# INC: DB 04
# ORG 2000
# BEGIN 2000
// complemento de todas as entradas
	   LDA INA
	   CMA
	   STA 2550
	   LDA INB
	   CMA
	   STA 2551
	   LDA INC
	   CMA
	   STA 2552
// realiza B*C*
	   LDA 2551
	   LXI H,2552
	   ANA M
	   STA 3000
// realiza A*B*D
	   LDA 2550
	   LXI H,2551
	   ANA M
	   LXI H,2503
	   ANA M
	   STA 3001
// realiza B*C* + A*B*D
	   LDA 3000
	   LXI H,3001
	   ORA M
	   STA 3050
	   HLT
