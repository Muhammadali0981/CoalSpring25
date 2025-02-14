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