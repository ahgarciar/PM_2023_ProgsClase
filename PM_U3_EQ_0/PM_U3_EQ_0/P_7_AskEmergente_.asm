TITLE  Mensaje Emergente para Preguntas (YES / NO)

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

.data
; Área de Declaración de Variables
titulo_7 db "Invitacion", 0 
contenido_7 db "¿Gustas salir a caminar conmigo?", 0 
; 0dh, 0ah = ENTER   =>  CrLF
.code

	main7 PROC	
		;Lógica del Programa
		;
		
		mov edx, offset contenido_7
		mov ebx, offset titulo_7

		mov eax, 100000
		call writedec

		call crlf

		call msgboxask ; eax

		call writedec

		
		exit	
	
	main7 ENDP
	
	END main7
