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

message1_12 db "Mensaje 1" , 0
message2_12 db "Mensaje 2" ,0
message3_12 db "Mensaje 3",0

.code
	main12 PROC
		;Logica del Programa

		mov edx, offset message1_12
		call writestring
		call crlf
		
		jmp continuar ; salto incondicional

		mov edx, offset message2_12
		call writestring
		call crlf

		continuar: ;etiqueta

		mov edx, offset message3_12
		call writestring
		call crlf

		exit	
	main12 ENDP
	END main12