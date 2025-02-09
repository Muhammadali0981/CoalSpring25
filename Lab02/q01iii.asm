.code
main PROC
  mov eax, 101110b
  mov ebx, 50Ah
  mov ecx, 6710d
  mov edx, 0

  add edx, eax
  add edx, ebx
  add edx, ecx

  mov eax, 1010001b
  mov ebx, 0Fh

  add edx, eax
  add edx, ebx
call DumpRegs

exit
main ENDP
END main
