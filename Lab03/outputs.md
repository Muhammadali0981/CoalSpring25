# Lab 03
### Q1
```asm
INCLUDE Irvine32.inc
.data
	val1 SWORD ?
	val2 SBYTE -11
```
### Q2
```asm
INCLUDE Irvine32.inc
.data
	val3 SDWORD -2147483648
```
### Q3
```asm
INCLUDE Irvine32.inc
.data
	myVar WORd 2, 4, 8
```
### Q4
```asm
INCLUDE Irvine32.inc
.data
	myColour BYTE "Blue",0
	A WORD 12
	B WORD 2
	C WORD 13
	D WORD 8
	E WORD 14
```
### Q5
```asm
INCLUDE Irvine32.inc
.data
	a DWORD 11h
	b DWORD 10h
	c1 DWORD 30h
	d DWORD 40h
.code
main PROC
	
	;a+b
	mov eax, a
	add eax, b

	;a-b
	mov edx, a
	sub edx, b

	sub eax, edx
	add eax, c1

	add eax, d
	mov ebx, eax

	call WriteInt
	exit


main ENDP
END main
```
![image](https://github.com/user-attachments/assets/4e30baf8-3f38-414e-a3be-272469c99bb3)

### Q6
```asm
INCLUDE Irvine32.inc
.data
	a DWORD 00010001b
	b DWORD 00010000b
	c1 DWORD 00110000b
	d DWORD 01000000b
.code
main PROC
	
	;a+b
	mov eax, a
	add eax, b

	;a-b
	mov edx, a
	sub edx, b

	sub eax, edx
	add eax, c1

	add eax, d
	mov ebx, eax

	call WriteInt
	exit


main ENDP
END main
```
![image](https://github.com/user-attachments/assets/2f0126e6-94e1-4594-afa7-974d6a174f3a)

### Q7
```asm
INCLUDE Irvine32.inc
.data
	wArray WORd 2, 4, 8
```
### Q8
```asm
INCLUDE Irvine32.inc
.data
	dArray DWORd 50 DUP(?)
```
### Q9
```asm
INCLUDE Irvine32.inc
.data
	myStr BYTE 500 DUP(“TEST”)
```
### Q10
```asm
INCLUDE Irvine32.inc
.data
	bArray BYTE 20 DUP(0)
```
