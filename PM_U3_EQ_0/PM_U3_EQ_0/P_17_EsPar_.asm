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

main17 PROC
; L�gica del Programa

	ImprimeCadenaLn "ingresa un numero: "
	call readint ; eax

	ImprimeCadenaLn "El numero es: "

	checarPar eax
	

exit

main17 ENDP

END main17
