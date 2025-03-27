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
## Q2
```asm
INCLUDE irvine32.inc

.data
	num1 DWORD 1
	num2 DWORD 2
	num3 DWORD 3

.code
main PROC
	mov eax, num1
	push eax
	mov eax, num2
	push eax
	mov eax, num3
	push eax
	
	pop eax
	pop ebx
	pop ecx
	
	add eax, ebx
	add eax, ecx

	call writedec
	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/ba63236d-8010-46e9-b458-0c2666a20a46)

