# ORG 2000
# BEGIN 2000
//Algoritmo para realizar a soma de dois números de 16 bits
//Os dados de entrada são salvos nos espaços 2050, 2051, 2052 e 2053 da memória
//Os dados de saída são salvos nos espaços 2060 e 2061 da memória
	   LXI H,2010
	   SHLD 2050
	   LXI H,4030
	   SHLD 2052
	   LHLD 2050
	   XCHG
	   LHLD 2052
	   DAD D
	   SHLD 2060
	   HLT
