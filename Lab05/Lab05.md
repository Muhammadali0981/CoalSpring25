## Q1
```asm
include irvine32.inc

.data
	arr BYTE 61,43,11,52,25
	newarr BYTE 5 dup(?)
.code
main proc
	mov esi, offset newarr

	mov bl, arr[2]
	mov [esi], bl
	inc esi

	mov bl, arr[4]
	mov [esi], bl
	inc esi

	mov bl, arr[1]
	mov [esi], bl
	inc esi

	mov bl, arr[3]
	mov [esi], bl
	inc esi

	mov bl, arr[0]
	mov [esi], bl
	
	mov esi, offset newarr
	mov ecx, lengthof newarr
	L1: 
		movzx eax, BYTE ptr [esi]
		call writeint
		add esi, 1
		call crlf
		
	loop L1
	
	exit
main endp
end main
```

## Q4 
```asm
include irvine32.inc
.data
	arrayB BYTE 10, 20, 30 
	arrayW WORD 150, 250, 350 
	arrayD DWORD 600, 1200, 1800
	sum1 DWORD ?
	sum2 DWORD ?
	sum3 DWORD ?
.code
main PROC
	movzx eax, arrayB[0]
	movzx ebx, arrayW[0]
	add eax, ebx
	add eax, arrayD[0]
	mov sum1, eax
	call writeint
	call crlf

	movzx eax, arrayB[1]
	movzx ebx, arrayW[2]
	add eax, ebx
	add eax, arrayD[4]
	mov sum2, EAX
	call writeint
	call crlf

	movzx eax, arrayB[2]
	movzx ebx, arrayW[4]
	add eax, ebx
	add eax, arrayD[8]
	mov sum1, eax
	call writeint
	call crlf

exit
main endp
end main
```
