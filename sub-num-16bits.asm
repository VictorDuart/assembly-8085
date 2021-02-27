# ORG 2000
# BEGIN 2000
//Algoritmo realiza a subtração de dois números de 16 bits
//Os dados de entrada são salvos nos espaços 2050, 2051, 2052 e 2053 da memória
//Os dados de saída são salvos nos espaços 2060 e 2061 da memória
	   LXI H,4030
	   SHLD 2050
	   LXI H,2010
	   SHLD 2052
	   LDA 2050
	   LXI H,2052
	   SUB M
	   STA 2060
	   LDA 2051
	   LXI H,2053
	   SUB M
	   STA 2061
	   HLT
