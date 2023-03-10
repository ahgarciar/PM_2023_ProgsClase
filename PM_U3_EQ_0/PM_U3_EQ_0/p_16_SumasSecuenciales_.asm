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

INCLUDE MACROS.inc

.data

.code

main16 PROC
; Lógica del Programa

	ImprimeCadenaLn "ingresa un numero: "
	call readint ; eax

	mov ebx, eax

	ImprimeCadenaLn "Ingresa un numero: "
	call readint ; eax

	sumaAB eax, ebx  ; eax
	mov ebx, eax

	ImprimeCadenaLn "Ingresa un numero: "
	call readint ; eax

	sumaAB eax, ebx  ; eax

	ImprimeCadenaLn "El resultado es: "
	call writeint

exit

main16 ENDP

END main16
