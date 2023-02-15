TITLE Trabajo 1
;DESCRPICION 
;Objetivo: Primera ejecucion de masm
;
; Autore(s):
;         Garcia Ruiz Alejandro H.
; Semestre: 8vo Semestre ISC 
;FIN DESCRPICION
INCLUDE Irvine32.inc  
.data
; Area de Declaracion de Variables

.code
	main3 PROC
		;Logica del Programa
		
		mov eax, 4

		call Writeint 
		; imprimir en consola el valor 
		; con el que cuenta el registro eax

		exit	
	main3 ENDP
	END main3