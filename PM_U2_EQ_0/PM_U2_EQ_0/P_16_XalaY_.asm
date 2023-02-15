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
	main16 PROC
		;logica apartir de aqui
		
		;x = 3
		;y = 4   

		;x elevada a la 4

		;3 x 3 x 3 x 3 
		
		call readint ; leemos un valor y lo guardamos en eax  ; BASE
		mov ebx, eax ; ebx respalda la base

		call readint ; leevalor un valor y lo guardamos en eax ; POTENCIA
		mov ecx, eax ; ecx respalda la potencia

		;se debe regresar la base a eax
		mov eax, ebx

		repite:
			mul ebx 

			sub ecx, 1
			cmp ecx, 1
			jg repite

		call writedec



		exit	
	main16 ENDP
	END main16