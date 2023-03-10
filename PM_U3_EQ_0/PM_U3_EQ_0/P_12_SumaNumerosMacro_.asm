TITLE 

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

INCLUDE Macros.inc

.data

.code

main12 PROC
; Lógica del Programa

;ImprimeCadenaLn "Ingresa el número 1: "
call readint   ; eax

mov ebx, eax

;ImprimeCadenaLn "Ingresa el número 2: "
call readint

add eax, ebx

;ImprimeCadenaLn "La suma es: "
call writeint


exit

main12 ENDP

END main12
