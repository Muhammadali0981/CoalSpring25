# Lab 03
## Q1
```asm
INCLUDE Irvine32.inc
.data
	myvar BYTE 10
.code
main PROC
	mov eax, 0
	mov al, myvar
	add al, 40 
	call writeint

exit 
main ENDP
END main
```
