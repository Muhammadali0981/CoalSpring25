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
end main```
