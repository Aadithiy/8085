	   MVI B,0AH
	   MVI A,00H

LOOP:	   ADD B
	   DCR B
	   JNZ LOOP
	   HLT
