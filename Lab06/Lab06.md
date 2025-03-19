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
## Q2 part iii
```asm 
include irvine32.inc
.data
	a DWORD 4
	
.code
main proc
	mov ecx, 4
	mov eax, 4
	
	L2:
		mov ebx, ecx
		mov ecx, a
		
		L1: 
			call writedec
			dec eax
		loop L1
		
		call crlf
		dec a
		mov eax, 4
		mov ecx, ebx
	loop L2

	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/b46845c7-43a8-4106-85fc-4956bd50ad3c)
## Q2 part iv
```asm 
include irvine32.inc
.data
	a DWORD 4
	
.code
main proc
	mov ecx, 4
	mov eax, 1
	
	L2:
		mov ebx, ecx
		mov ecx, a
		
		L1: 
			call writedec
			inc eax
		loop L1
		
		call crlf
		dec a
		mov eax, 1
		mov ecx, ebx
	loop L2

	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/de8c33c9-2acd-478a-a420-a41d8dec015a)
