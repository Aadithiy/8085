	   LXI H,2100
	   MVI A,25
	   MOV M,A
	   INX H
	   MVI A,18
	   MOV M,A
	   INX H
	   MVI A,3A
	   MOV M,A
	   INX H
	   MVI A,12
	   MOV M,A
	   INX H
	   MVI A,45
	   MOV M,A
	   INX H
	   MVI A,20
	   MOV M,A
	   INX H
	   MVI A,05
	   MOV M,A
	   INX H
	   MVI A,30
	   MOV M,A
	   INX H
	   MVI A,10
	   MOV M,A
	   INX H
	   MVI A,28
	   MOV M,A
	   LXI H,2100
	   MOV A,M
	   MOV B,A
	   MOV C,A
	   MVI D,09
	   INX H

LOOP:	   MOV A,M
	   CMP B
	   JC CHECKSMALL
	   MOV B,A

CHECKSMALL:  MOV A,M
	   CMP C
	   JNC NEXT
	   MOV C,A

NEXT:	   INX H
	   DCR D
	   JNZ LOOP
	   MOV A,B
	   STA 2200
	   MOV A,C
	   STA 2201
	   HLT
