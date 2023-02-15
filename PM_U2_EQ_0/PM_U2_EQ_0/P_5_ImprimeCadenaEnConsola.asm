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
cadena db "Ingresa un numero:",0
cadena2 db "El numero ingreso es:",0

.code
	main5 PROC
		;Logica del Programa
		mov edx, offset cadena
		call writestring
		call crlf

		call readint 
		;;lee un valor ingresado por consola
		;y lo almacena en eax

		call crlf

		call writeint ; echo para comprobar el contenido de eax


		exit	
	main5 ENDP
	END main5