![image](https://github.com/user-attachments/assets/26ece733-f5f3-4a0e-b798-3f48d26fe92c)## Q1
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
![image](https://github.com/user-attachments/assets/3cebe2ef-3dfb-437f-98bf-b2749c4a5fe9)

## Q2
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
![image](https://github.com/user-attachments/assets/df9f73a0-282a-4b1c-9009-022b179b0279)

## Q3
```asm
include irvine32.inc

.data
	array1 BYTE 10, 20, 30, 40
	array2 BYTE 4 DUP (?)
	 
.code
main PROC
	mov esi, 0
	mov edi, lengthof array2 - 1
	mov ecx, lengthof array1
	
l1:
	mov ebx, 0
	mov bl, array1[esi]
	mov array2[edi], bl
	inc esi
	dec edi	
	loop l1
	
	mov ecx, lengthof array2
	mov esi, 0
	
print:
	mov eax, 0
	movzx eax, array2[esi]
	call writeint
	inc esi
	loop print

exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/e3d3a3b4-e5a0-4fa4-8d54-937f95f549f1)

## Q4
```asm
include irvine32.inc

.data
	array1 DWORD 10, 20, 30, 40, 50
	
	 
.code
main PROC
	mov edi, 0
	mov ecx, lengthof array1

l1:
	sub array1[edi * 4], 5
	inc edi	
	loop l1
	
	mov ecx, lengthof array1
	mov edi, 0

print:
	mov eax, 0
	mov eax, array1[edi * 4]
	call crlf
	call writeint
	inc edi
	loop print

exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/e2694cd3-6c0e-49fb-bd6f-b011b51b621f)

## Q5
```asm
INCLUDE Irvine32.inc

.data
	arrayB BYTE 60, 70, 80
	arrayW WORD 150, 250, 350
	arrayD DWORD 600, 1200, 1800
.code
main proc
	mov esi, lengthof arrayB - 1
	movzx eax, arrayB[esi * type arrayB]
	add al, arrayB[0]
	call writedec
	call crlf

	mov esi, lengthof arrayW - 1
	movzx eax, arrayW[esi * type arrayW]
	add ax, arrayW[0]
	call writedec
	call crlf

	mov esi, lengthof arrayD - 1
	mov eax, arrayD[esi * type arrayD]
	add eax, arrayD[0]
	call writedec

	exit
main endp
end main
```
![image](https://github.com/user-attachments/assets/b3b3d79b-8b70-4b27-a92f-f2d0f2e01440)
