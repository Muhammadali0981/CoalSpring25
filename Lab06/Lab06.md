## Q1
```asm
include irvine32.inc

	
.code
main proc
	mov ecx, 10
	mov eax, 0
	mov ebx, 1
	mov edx, 0
	L1: 
		call writeint
		call crlf
		mov edx,0

		add edx, eax
		add edx, ebx

		mov eax, ebx
		mov ebx, edx
	loop L1
	
	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/996eb331-a8fb-467b-ae7e-d63c8b4e196d)

## Q2 part i
```asm
include irvine32.inc
.data
	a DWORD 1
	
.code
main proc
	mov ecx, 4
	mov eax, 'I'
	
	L2:
		mov ebx, ecx
		mov ecx, a
		
		L1: 
			call writechar	
		loop L1

		call crlf
		inc a
		mov ecx, ebx
	loop L2

	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/2cf9c475-fe9b-4d4e-9b69-4a7d33eaf6fc)
## Q2 part ii
```asm 
include irvine32.inc
.data
	a DWORD 4
	
.code
main proc
	mov ecx, 4
	mov eax, 'I'
	
	L2:
		mov ebx, ecx
		mov ecx, a
		
		L1: 
			call writechar	
		loop L1

		call crlf
		dec a
		mov ecx, ebx
	loop L2

	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/4c20dc71-2c80-49a5-ac4d-0e5fc3ab61ac)
