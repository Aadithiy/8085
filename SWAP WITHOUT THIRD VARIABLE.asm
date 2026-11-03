	   LXI H,2100
	   MVI A,B5
	   MOV M,A
	   MOV A,M	
	   MVI B,08	
	   MVI C,00	
LOOP:	   RRC
	   JNC SKIP
	   INR C	

SKIP:	   DCR B
	   JNZ LOOP	
	   INX H
	   MOV M,C
	   HLT
