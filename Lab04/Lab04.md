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
### Q3
```asm
INCLUDE irvine32.inc
.data
	varB BYTE +10
	varW WORD -150
	varD DWORD 600

.code
main PROC

	movzx eax, varB
	movzx ebx, varW
	mov ecx, varD
	call DumpRegs

exit
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/c31e2f66-a729-41f1-823f-b7c36024e410)
### Q4i
```asm
INCLUDE irvine32.inc
.code
main PROC
	
	mov eax, 89
	add eax, 75Fh
	sub eax, 46o
	sub eax, 28
	add eax, 1101b
	call DumpRegs

exit
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/7b88578b-e335-4e14-9a5f-3083546ad6de)
### Q4ii
```asm
INCLUDE irvine32.inc
.data
	Val1 DWORD 25h
	Val2 BYTE 36o
	Val3 WORD 20d
	
.code
main PROC
	
	mov eax, 0
	mov ebx, Val1
	movzx ecx, Val2
	movzx edx, Val3

	add eax, ebx
	add eax, ecx
	sub eax, 654h
	add eax, edx

	call writeint

exit
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/eed791bf-3cec-4951-b5aa-a0debd2d61c1)
### Q5
```asm
INCLUDE irvine32.inc
.data
	SecondsInDay = 24 * 60 * 60
	
.code
main PROC
	 
	 mov eax, SecondsInDay
	 call writeint

exit
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/8faa2fde-0559-470f-aba1-77fe2ac09c61)
### Q6
```asm
INCLUDE irvine32.inc
.data
	A = 0FF10h
	B = 0E10Bh
	
.code
main PROC
	 
	 mov eax, A
	 mov ebx, B
	 xchg eax, ebx
	 call DumpRegs

exit
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/c94b1bc0-1fad-4681-aaf8-8c01f7b87f2c)
### Q7
```asm
INCLUDE irvine32.inc
.data
	val1 BYTE 10h
	val2 WORD 8000h
	val3 DWORD 0FFFFh
	val4 WORD 7FFFh								
	
.code
main PROC
	 
	 inc val2
	 movzx ebx, val2

	 sub eax, val3

	 movzx ecx, val2
	 movzx edx, val4

	 sub ecx, edx

	 call DumpRegs

exit
main ENDP
END main
```
![image](https://github.com/user-attachments/assets/a0787f5e-8d25-474f-95e0-c95a92b74613)
