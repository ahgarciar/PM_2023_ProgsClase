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
	main18 PROC
		;logica apartir de aqui
		
		ciclo:
			call readint ; eax 
			cmp eax, 0
			jge ciclo

		exit	
	main18 ENDP
	END main18