# ORG 2000
# BEGIN 2000
//Algoritmo realiza a subtra��o de dois n�meros de 16 bits
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
