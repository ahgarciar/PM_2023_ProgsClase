TITLE  Mensaje Emergente para Preguntas (YES / NO)

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Mtro. Alejandro Garcia
;		  Su Nombre.! 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
titulo_7 db "Invitacion", 0 
contenido_7 db "�Gustas salir a caminar conmigo?", 0 
; 0dh, 0ah = ENTER   =>  CrLF
.code

	main7 PROC	
		;L�gica del Programa
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
