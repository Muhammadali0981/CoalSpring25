## Q1
```asm
INCLUDE Irvine32.inc

.data
    ;
.code

ThreeProd PROC
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    mul ebx
    mov ebx, [ebp + 16]
    mul ebx
    call WriteDec

    pop ebp
    ret 16
ThreeProd ENDP

main PROC
    push 4
    push 3
    push 2
    call ThreeProd

    exit
main ENDP
END main
```

## Q2
```asm
INCLUDE Irvine32.inc

.data
    arr DWORD 1, 2, 3, 4, 5, 6, -1, 8, 9, 10, 22, 12, 13, 14, 15, 16, 17, 18, 19, 20
    msg1 BYTE "Min value: ",0
    msg2 BYTE "Max value: ",0
.code

MinMaxArray PROC
    push ebp
    mov ebp, esp

    mov esi, [ebp + 8]
    mov eax, [esi] ; min value
    mov ebx, [esi] ; max value
    mov ecx, 20
find:
    cmp eax, [esi]
    jl notmin
    mov eax, [esi]
notmin:
    cmp ebx, [esi]
    jg notmax
    mov ebx, [esi]
notmax:
    add esi, [ebp + 12]
    loop find

    pop ebp
    ret 12
MinMaxArray ENDP

main PROC
    push TYPE arr
    push OFFSET arr
    call MinMaxArray

    mov edx, OFFSET msg1
    call WriteString
    call WriteInt
    call CRLF
    mov eax, ebx
    mov edx, OFFSET msg2
    call WriteString
    call WriteInt

    exit
main ENDP
END main
```


## Q3
```asm
INCLUDE Irvine32.inc

.data
    msg BYTE "Enter: ",0
.code

LocalSquare PROC
    enter 4,0

    mov edx, OFFSET msg
    call WriteString
    call ReadInt
    mov [ebp - 4], eax
    mul eax
    mov [ebp - 4], eax
    call WriteInt

    leave
    ret
LocalSquare ENDP

main PROC
    call LocalSquare

    exit
main ENDP
END main
```


## Q4
```asm
INCLUDE Irvine32.inc

.data
    A DWORD ?
    B DWORD ?
    _C DWORD ?
    D DWORD ?
    msg1 BYTE "Enter: ",0
    msg2 BYTE "Largest: ",0
.code

CheckPrime PROC
    enter 0,0

    mov eax, [ebp + 8]
    cmp eax, 2
    jl notprime

    ; i = 2; i*i <= number; i += 1
    mov ecx, 2
isprime:
    mov eax, ecx
    mul eax
    cmp eax, [ebp + 8]
    jg end_isprime

    mov eax, [ebp + 8]
    mov edx, 0
    div ecx
    cmp edx, 0
    je notprime

    inc ecx
    jmp isprime
end_isprime:
    mov eax, 1
    jmp end_check
notprime:
    mov eax, 0
end_check:
    leave
    ret 8
CheckPrime ENDP

LargestPrime PROC
    enter 0,0

    mov eax, [ebp + 8]
    cmp eax, [ebp + 12]
    jge checkC
    mov eax, [ebp + 12]
checkC:
    cmp eax, [ebp + 16]
    jge checkC
    mov eax, [ebp + 16]
checkD:
    cmp eax, [ebp + 20]
    jge endcheck
    mov eax, [ebp + 20]
endcheck:

    leave
    ret 20
LargestPrime ENDP

main PROC
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov A, eax
    call WriteString
    call ReadInt
    mov B, eax
    call WriteString
    call ReadInt
    mov _C, eax
    call WriteString
    call ReadInt
    mov D, eax

    push D
    call CheckPrime
    cmp eax, 0
    je endall
    push _C
    call CheckPrime
    cmp eax, 0
    je endall
    push B
    call CheckPrime
    cmp eax, 0
    je endall
    push D
    call CheckPrime
    cmp eax, 0
    je endall

    push D
    push _C
    push B
    push A
    call LargestPrime
    mov edx, OFFSET msg2
    call WriteString
    call WriteDec
endall:
    exit
main ENDP
END main
```


## Q5
```asm
INCLUDE Irvine32.inc

.data
    arr DWORD 10, 9, 8, 7, 6, 5, 4, 3, 2, 1
.code

BubbleSort PROC
    enter 0,0

    mov ecx, [ebp + 12]
    dec ecx
outer:
    push ecx
    mov esi, [ebp + 8]
    mov edi, esi
    add edi, 4
    mov ecx, [ebp + 12]
    dec ecx
inner:
    mov eax, [esi]
    cmp eax, [edi]
    jle skip
    xchg eax, [edi]
    mov [esi], eax
skip:
    add esi, 4
    add edi, 4
    loop inner
    pop ecx
    loop outer

    leave
    ret 12
BubbleSort ENDP

main PROC
    push LENGTHOF arr
    push OFFSET arr
    call BubbleSort

    mov ecx, LENGTHOF arr
    mov esi, OFFSET arr
print:
    mov eax, [esi]
    call WriteDec
    mov eax, 32
    call WriteChar
    add esi, 4
    loop print

    exit
main ENDP
END main
```
