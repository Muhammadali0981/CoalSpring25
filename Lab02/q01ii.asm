.code
main PROC
  mov eax, 30
  mov ebx, 9
  mov ecx, 186
  mov edx, 0

  add edx, eax
  sub edx, ebx
  add edx, ecx

  mov eax, 150
  sub edx, eax

call DumpRegs
exit
main ENDP
END main
