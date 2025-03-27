## Q1
```asm
INCLUDE irvine32.inc

.data
	arr WORD 1,2,3,4,5,6,7,8,9,10
	dest WORD 10 DUP(?)
.code
main PROC
	mov ecx, 10
	mov esi, 0
	
	push_op:
		mov ax, arr[esi]
		PUSH ax
		add esi, 2
	loop push_op

	mov ecx, 10
	mov esi, 0
	pop_op:
		POP ax
		mov dest[esi], ax
		add esi, 2
	loop pop_op
	mov ecx, 10
	mov esi, 0
	print:
		movzx eax, dest[esi]
		call writeint
		inc esi
		inc esi
	loop print
	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/0f3d7534-552b-4130-bcd8-7d83cf144733)

