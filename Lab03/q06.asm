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