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
	main4 PROC
		;Logica del Programa
		
		call readint 
		;;lee un valor ingresado por consola
		;y lo almacena en eax

		call writeint ; echo para comprobar el contenido de eax


		exit	
	main4 ENDP
	END main4