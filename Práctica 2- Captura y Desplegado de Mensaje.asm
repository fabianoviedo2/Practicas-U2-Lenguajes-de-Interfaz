; Materia: Lenguajes de Interfaz
; Alumno: Fabian Alexis Camacho Oviedo
; Horario: 8-9
; Docente: Dr José Luis Medina Jiménez
; Práctica: Captura y despliegue de mensajes
; Descripción: Captura el nombre del usuario, lo muestra en pantalla y despliega la cantidad de caracteres.

INCLUDE Irvine32.inc

.data
mensajeEntrada BYTE "Escribe tu nombre: ", 0
mensajeLongitud BYTE "Caracteres capturados: ", 0

nombre BYTE 30 DUP(0)
longitud DWORD ?

.code
main PROC

    ; Mostrar mensaje de entrada
    mov edx, OFFSET mensajeEntrada
    call WriteString

    ; Captura el nombre
    mov edx, OFFSET nombre
    mov ecx, SIZEOF nombre
    call ReadString

    ; Guarda la cantidad de caracteres
    mov longitud, eax
    call Crlf

    ; Muestra el nombre capturado
    mov edx, OFFSET nombre
    call WriteString
    call Crlf

    ; Muestra el mensaje de longitud
    mov edx, OFFSET mensajeLongitud
    call WriteString

    ; Muestra la cantidad de caracteres
    mov eax, longitud
    call WriteDec

    exit

main ENDP
END main
