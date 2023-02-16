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
	main20 PROC
		;logica apartir de aqui
		
		mov ebx, 5

		cicloP:

		mov eax, 1
		ciclo:
		call writedec
		call crlf
		inc eax
		cmp eax, 10
		jle ciclo

		call crlf 

		dec ebx
		cmp ebx, 0
		jg ciclop

		exit	
	main20 ENDP
	END main20