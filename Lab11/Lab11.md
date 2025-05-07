## Task 1
```asm
.data
Str1 BYTE '127&j~3#^&*#*#45^',0

.code
Scan_String PROC
    mov esi, OFFSET Str1  
    mov ecx, 0             
    
SearchLoop:
    mov al, [esi]          
    cmp al, 0              
    je NotFound           
    cmp al, '#'            
    je Found               
    inc esi                
    inc ecx                
    jmp SearchLoop         
    
Found:
    mov eax, ecx           ; Return index in EAX
    ret
    
NotFound:
    mov eax, -1            ; Return -1 if not found
    ret
Scan_String ENDP
```

## Task 2
```asm
Scan_String PROC
    push ebp
    mov ebp, esp
    
    mov esi, [ebp+8]       
    mov al, [ebp+12]       
    mov ecx, 0             
    
SearchLoop:
    mov dl, [esi]         
    cmp dl, 0             
    je NotFound        
    cmp dl, al             
    je Found             
    inc esi                
    inc ecx                ; Increment index
    jmp SearchLoop         
    
Found:
    mov eax, ecx           ; Return index in EAX
    pop ebp
    ret 8                  ; Clean up stack (2 params * 4 bytes)
    
NotFound:
    mov eax, -1            ; Return -1 if not found
    pop ebp
    ret 8
Scan_String ENDP

; Example call:
; push '#'
; push OFFSET Str1
; call Scan_String
```

## Task 3
```asm
IsCompare PROC
    push ebp
    mov ebp, esp
    push esi
    push edi
    
    mov esi, [ebp+8]       ; First string
    mov edi, [ebp+12]      ; Second string
    
CompareLoop:
    mov al, [esi]
    mov bl, [edi]
    cmp al, bl
    jne NotEqual           ; Characters differ
    cmp al, 0              ; Check for null terminator
    je Equal               ; Both strings ended
    inc esi
    inc edi
    jmp CompareLoop
    
Equal:
    mov eax, 1             ; Return 1 for equal
    jmp Done
    
NotEqual:
    mov eax, 0             ; Return 0 for not equal
    
Done:
    pop edi
    pop esi
    pop ebp
    ret 8                  ; Clean up stack (2 params)
IsCompare ENDP
```

## Task 4
```asm
Str_Reverse PROC
    push ebp
    mov ebp, esp
    push esi
    push edi
    push ebx
    
    mov esi, [ebp+8]       ; Get string offset
    
    ; Find string length
    mov edi, esi
    mov ecx, 0
FindLength:
    cmp BYTE PTR [edi], 0
    je FoundEnd
    inc edi
    inc ecx
    jmp FindLength
    
FoundEnd:
    dec edi                ; Point to last character before null
    
ReverseLoop:
    cmp esi, edi
    jae Done               ; If pointers meet/cross, we're done
    
    ; Swap characters
    mov al, [esi]
    mov bl, [edi]
    mov [esi], bl
    mov [edi], al
    
    ; Move pointers
    inc esi
    dec edi
    jmp ReverseLoop
    
Done:
    pop ebx
    pop edi
    pop esi
    pop ebp
    ret 4                  ; Clean up stack (1 param)
Str_Reverse ENDP
```

## Task 5
```asm
Load PROC
    push ebp
    mov ebp, esp
    push esi
    push ecx
    push ebx
    
    mov esi, [ebp+8]       ; Array offset
    mov ecx, [ebp+12]      ; Number of elements
    mov ebx, 0             ; Index counter
    
LoadLoop:
    cmp ebx, ecx
    jge Done               ; If index >= count, we're done
    
    ; Multiply current element by multiplier (example: multiply by 2)
    mov eax, [esi + ebx*4] 
    shl eax, 1            
    mov [esi + ebx*4], eax ; Store back
    
    inc ebx                ; Next element
    jmp LoadLoop
    
Done:
    pop ebx
    pop ecx
    pop esi
    pop ebp
    ret 8                  ; Clean up stack (2 params)
Load ENDP

; Example call:
; push 10                  ; Number of elements
; push OFFSET array        ; Array offset
; call Load
```
