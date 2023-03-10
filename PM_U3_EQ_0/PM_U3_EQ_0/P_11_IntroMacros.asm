TITLE  INTRODUCCIÓN A MACROS

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

ImprimeCadenaLn MACRO cadena
	LOCAL cad
	.data
		cad db cadena, 0
	.code
		push edx
		mov edx, offset cad
		call writestring
		call crlf
		pop edx
ENDM

ImprimeCadena MACRO cadena
	LOCAL cad
	.data
		cad db cadena, 0
	.code
		push edx
		mov edx, offset cad
		call writestring
		pop edx
ENDM

.data

.code

	main11 PROC	
		;Lógica del Programa

		ImprimeCadenaLn "Hola Mundo :D"
		ImprimeCadena "Saludos ... "
		ImprimeCadena "jeje "

		exit	
	
	main11 ENDP
	
	END main11
