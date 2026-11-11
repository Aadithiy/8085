	   LXI H,2050
	   MVI M,05
	   INX H
	   MVI M,25
	   INX H
	   MVI M,48
	   INX H
	   MVI M,12
	   INX H
	   MVI M,76
	   INX H
	   MVI M,39
	   LXI H,2050
	   MOV C,M
	   INX H
	   MOV A,M
	   DCR C
	   JZ STORE

CHECK:	   INX H
	   CMP M
	   JNC SKIP
	   MOV A,M

SKIP:	   DCR C
	   JNZ CHECK

STORE:	   STA 3050
	   HLT
