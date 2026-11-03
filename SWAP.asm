	   MVI A,4F
	   STA 2100
	   MVI A,5F
	   STA 2101
	   LDA 2100
	   MOV B,A
	   LDA 2101
	   STA 2100
	   MOV A,B
	   STA 2101
	   HLT
