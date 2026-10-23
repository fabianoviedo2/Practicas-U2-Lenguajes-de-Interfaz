INCLUDE Irvine32.inc

.code
main PROC
   mov ebx, 1 ; Valor inicial para el ciclo DO WHILE

ciclo:
mov eax, ebx ; movemos el valor a imprimir al registro de lectura de writedec
   call WriteDec ; se imprime en consola el valor actual antes de incrementar
   call Crlf ; se genera un salto de linea
   

   inc ebx ; se realiza el incremento de +1 en el registro ebx

   cmp ebx, 100 ; condicion de alida paraa finalizar el codigo, cumple una funcion de condicion para el ciclo DO WHILE
   jle ciclo ; salto condicional al bloque de codigo del ciclo 

   exit ; finaliza si se cumplio la condicion de salida 

   


main ENDP 

END main 