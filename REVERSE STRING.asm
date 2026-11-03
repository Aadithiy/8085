	   LXI H,2100
	   MVI A,41
	   MOV M,A
	   INX H
	   MVI A,42
	   MOV M,A
	   INX H
	   MVI A,43
	   MOV M,A
	   INX H
	   MVI A,44
	   MOV M,A
	   INX H
	   MVI A,45
	   MOV M,A
	   LXI H,2100
	   LXI SP,3000
	   MVI C,05

LOOP1:	   MOV A,M
	   PUSH PSW
	   INX H
	   DCR C
	   JNZ LOOP1
	   LXI H,2200
	   MVI C,05

LOOP2:	   POP PSW
	   MOV M,A
	   INX H
	   DCR C
	   JNZ LOOP2
	   HLT
