# ORG 2000
# BEGIN 2000
//O algoritmo realiza a soma de 5 n�meros de oito bits
//Os dados de entrada s�o salvos nos espa�os 2050, 2051, 2052, 2053 e 2054 da mem�ria
//O dado de sa�da � salvo no espa�o 2060 da mem�ria
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
