# ORG 1200
# ONOFF: DB 5D
# ORG 1201
# OFF: DB 00
# ORG 1202
# ON: DB 00
# ORG 1250
# MASCARA: DB 01
# ORG 1251
# PARADA: DB 80
# ORG 2000
# BEGIN 2000
//realiza-se a comparação da mascara para chave ON/OFF 
//da variável 0101 1101, caso a mascara bata acrescenta-se 1
//na variável de chaves abertas, caso contrário acrescenta-se 1 na
//variável de chaves fechadas
	   LDA MASCARA
	   LXI H,ONOFF
	   ANA M
	   LXI H,MASCARA
	   CMP M
	   JZ 3000
	   JNZ 4000
# ORG 3000
# BEGIN 3000
//incrementa 1 para chaves abertas
//a condição de parada é quando o bit MSB da mascara for para o carry
	   LXI H,ON
	   INR M
	   LDA MASCARA
	   RLC
	   STA MASCARA
	   JC 5000
	   JNC 2000
# ORG 4000
# BEGIN 4000
//incrementa 1 para chaves fechadas
//a condição de parada é quando o bit MSB da mascara for para o carry
	   LXI H,OFF
	   INR M
	   LDA 1250
	   RLC
	   STA 1250
	   LXI H,PARADA
	   CMP M
	   JC 5000
	   JNC 2000
# ORG 5000
# BEGIN 5000
//parada
	   HLT
