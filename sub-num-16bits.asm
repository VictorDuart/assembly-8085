# ORG 2000
# BEGIN 2000
//Algoritmo realiza a subtra��o de dois n�meros de 16 bits
//Os dados de entrada s�o salvos nos espa�os 2050, 2051, 2052 e 2053 da mem�ria
//Os dados de sa�da s�o salvos nos espa�os 2060 e 2061 da mem�ria
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
