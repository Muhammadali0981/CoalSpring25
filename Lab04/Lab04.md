# Lab 04
### Q1
#### What errors are present in the following?
##### MOV AX 3d
##### comma not presnt
##### MOV 23, AX
##### register is written first
##### MOV CX, CH
##### register not of the same size
##### MOVE AX, 1h
##### command is mov not move
##### ADD 2, CX
##### register should be written first
##### ADD 3, 6
##### there should be a destination for the addition answer
##### INC AX, 2
##### inc only takes on operand
### Q2
```asm
INCLUDE irvine32.inc
.data
	myname DWORD 41h, 4ch, 49h ;A = 41 L = 4c I = 49

.code
main PROC

	mov eax, myname[0]
	mov ebx, myname[4]
	mov ecx, myname[8]
	call DumpRegs

exit
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/b237ca2f-5bea-49c1-9b7e-26ada32c6272)
