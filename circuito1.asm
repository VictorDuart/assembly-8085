// Algoritmo implementa a expressão lógica do Circuito1
// Entrada M armazenada no espaço 4000 da memória
// Entrada N armazenada no espaço 4001 da memória
// Entrada Q armazenada no espaço 4002 da memória 
// Saída armazenada no espaço 4050 da memória
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
