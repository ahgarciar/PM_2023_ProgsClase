TITLE 

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

INCLUDE Macros.inc

.data

.code

main12 PROC
; L�gica del Programa

;ImprimeCadenaLn "Ingresa el n�mero 1: "
call readint   ; eax

mov ebx, eax

;ImprimeCadenaLn "Ingresa el n�mero 2: "
call readint

add eax, ebx

;ImprimeCadenaLn "La suma es: "
call writeint


exit

main12 ENDP

END main12
