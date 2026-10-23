INCLUDE Irvine32.inc

.data
mensaje BYTE "Hola, mundo: ", 0

.code
main PROC
 mov ecx, 5

 ciclo:
  mov edx, OFFSET mensaje
   call writeString
   call crlf 
   loop ciclo 
   exit
main ENDP 

END main 