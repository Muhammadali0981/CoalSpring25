.code
main PROC
  mov eax, 0
  mov ebx, 0D83h
  mov ecx, 385
  mov edx, 10001101b

  add eax, edx
  sub eax, ebx
  add eax, ecx

  mov edx, 10
  mov ebx, 1111101b
  mov ecx, 0Eh

  add eax, edx
  add eax, ebx
  sub eax, ecx

  mov ebx, 0Fh
  add eax, ebx

  call writeint
exit
main ENDP
END main
