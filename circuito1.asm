// Algoritmo implementa a express�o l�gica do Circuito1
// Entrada M armazenada no espa�o 4000 da mem�ria
// Entrada N armazenada no espa�o 4001 da mem�ria
// Entrada Q armazenada no espa�o 4002 da mem�ria 
// Sa�da armazenada no espa�o 4050 da mem�ria
# ORG 3000
# BEGIN 3000
	   LXI H,4000
	   MVI M,11
	   LXI H,4001
	   MVI M,00
	   LXI H,4002
	   MVI M,01
	   LDA 4000
	   LXI H,4002
	   ANA M
	   STA 4050
	   HLT
