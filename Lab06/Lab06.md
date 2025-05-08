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

## Q3
```asm
INCLUDE Irvine32.inc

.data
	employee_count=5
	buffer_size=20
	ids dword employee_count DUP(?)
	names byte employee_count * buffer_size DUP(0)
	birth_year dword employee_count DUP(?)
	annual_salary dword employee_count DUP(?)
.code

space proc uses eax
	push eax

	mov eax, 32
	call writechar

	pop eax
	ret
space endp

read_name proc uses edx ecx edi
	push edx
	push ecx
	push edi

	mov edx, offset names
	mov edi, esi
	imul edi, buffer_size
	add edx, edi
	mov ecx, buffer_size
	call readstring

	pop edi
	pop ecx
	pop edx
	ret
read_name endp

main proc
	mov ecx, employee_count
	mov esi, 0

	input:
		; reading id
		call readint
		mov ids[esi * type ids], eax
		; reading name
		call read_name
		; reading birth year
		call readint
		mov birth_year[esi * type birth_year], eax
		; reading yearly salary
		call readint
		mov annual_salary[esi * type annual_salary], eax
		inc esi
		loop input

	mov ecx, employee_count
	mov esi, 0
	output:
		; writing id
		mov eax, ids[esi * type ids]
		call writedec
		call space
		; writing name
		mov edx, offset names
		mov edi, esi
		imul edi, buffer_size
		add edx, edi
		call writestring
		call space
		; writing birth year
		mov eax, birth_year[esi * type birth_year]
		call writedec
		call space
		; writing salary
		mov eax, annual_salary[esi * type annual_salary]
		call writedec
		call crlf
		inc esi
		loop output
	
	mov ecx, lengthof annual_salary
	mov esi, 0
	mov eax, 0
	total:
		add eax, annual_salary[esi * type annual_salary]
		inc esi
		loop total

	call crlf
	call writedec

	exit
main endp
end main
```
## Q4
```asm
INCLUDE Irvine32.inc

.data
	source BYTE "Hello", 0
	target BYTE lengthof source - 1 dup(?), 0


.code
main Proc
	
	mov esi, 0
	mov ecx, lengthof source 


copy:
	mov al, source[esi]
	mov target[esi], al
	inc esi
	loop copy
	
	mov edx, offset target
	call writestring


	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/81231090-6bc3-4395-ab9d-db4479e4461c)

## Q5
```asm
INCLUDE Irvine32.inc

.data
	arr DWORD 1, 2, 3, 4, 5

.code
main proc
	
	mov esi, 0
	mov ecx, lengthof arr/2
	mov edi, lengthof arr - 1


rev:
	mov eax, arr[esi * type arr]
	xchg eax, arr[edi * type arr]
	mov arr[esi * type arr], eax
	inc esi
	dec edi
	loop rev

	mov ecx, lengthof arr
	mov edi, 0

print:
	mov eax, arr[edi * type arr]
	call writedec
	call crlf
	inc edi
	loop print

	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/e946bbf7-5b8d-47e3-b358-a7492f285c00)

## Q6
```asm
INCLUDE Irvine32.inc

.data
	arr dword 8, 5, 1, 2, 6
	count dword ?
.code
main proc
	mov ecx, lengthof arr - 1

	outer:
		mov count, ecx
		mov ecx, lengthof arr - 1
		mov esi, 1
		mov edi, 0
		inner:
			mov eax, arr[esi * type arr]
			cmp eax, arr[edi * type arr]
			jge no_swap

			xchg eax, arr[edi * type arr]
			mov arr[esi * type arr], eax
		no_swap:
			inc esi
			inc edi
			loop inner

		mov ecx, count
		loop outer

	mov ecx, lengthof arr
	mov esi, 0
	print:
		mov eax, arr[esi * type arr]
		call writedec
		mov eax, 32
		call writechar
		inc esi
		loop print
		
	
	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/e6ca667d-85ec-4cb7-ac20-35b35de5ef06)
