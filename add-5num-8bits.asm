# ORG 2000
# BEGIN 2000
//O algoritmo realiza a soma de 5 números de oito bits
//Os dados de entrada são salvos nos espaços 2050, 2051, 2052, 2053 e 2054 da memória
//O dado de saída é salvo no espaço 2060 da memória
	   LXI H,2050
	   MVI M,10
	   LXI H,2051
	   MVI M,20
	   LXI H,2052
	   MVI M,30
	   LXI H,2053
	   MVI M,40
	   LXI H,2054
	   MVI M,50
	   LDA 2050
	   LXI H,2051
	   ADC M
	   LXI H,2052
	   ADC M
	   LXI H,2053
	   ADC M
	   LXI H,2054
	   ADC M
	   STA 2060
	   HLT
