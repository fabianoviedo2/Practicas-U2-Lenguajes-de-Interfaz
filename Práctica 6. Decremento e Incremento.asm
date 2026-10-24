; Materia: Lenguajes de Interfaz
; Alumno: Fabian Alexis Camacho Oviedo
; Horario: 8-9
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 6-Decremento e Incremento
; Descripción: se ingresa un PIN con un maximo de 3 intentos antes de que se bloquee el acceso.

INCLUDE Irvine32.inc

.data
    msgPIN BYTE "Ingrese eL PIN: ", 0
    msgIntentos BYTE "Intentos restantes: ", 0
    msgError BYTE "PIN incorrecto", 0
    msgAcceso BYTE "ACCESO PERMITIDO", 0
    msgBloqueado BYTE "ACCESO BLOQUEADO", 0

    pinCorrecto = 1234

.code
main PROC
   mov ebx, 3 ; NUMERO DE INTENTOS PARA INGRESAR

  intentar:
  ; Pedir el PIN
  mov edx, OFFSET msgPIN 
   call WriteString
   call ReadInt

   ; Comprobar si el PIN es correcto
   cmp eax, pinCorrecto
   je acceso
   
   mov edx, OFFSET msgError
   call WriteString
   call crlf

   dec ebx ; decrementar un intento

   jz bloqueado

   mov edx, OFFSET msgIntentos  ; Mostrar los intentos restantes
   call WriteString

   mov eax, ebx
   call WriteDec
   call crlf

   jmp intentar


acceso:
 ; Mostrar el acceso permitido
mov edx, OFFSET msgAcceso
call WriteString 
call crlf
jmp fin


bloqueado:
; Mostrar el acceso bloqueado
mov edx, OFFSET msgBloqueado
call WriteString
call crlf 
jmp fin

fin:
exit

main ENDP 

END main 
