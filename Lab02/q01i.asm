INCLUDE Irvine32.inc
.code
  main PROC
  mov eax, 47
  mov ebx, 39
  mov ecx, 60
  mov edx, 0
  
  add edx, eax
  add edx, ebx
  add edx, ecx
  
  mov eax, 85
  mov ebx, 64
  mov ecx, 54o
  
  add edx, eax
  add edx, ebx
  add edx, ecx
  
  mov eax, 0Ah
  sub edx, eax

call DumpRegs
exit
main ENDP
END main
