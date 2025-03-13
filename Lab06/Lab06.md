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

## Q2
