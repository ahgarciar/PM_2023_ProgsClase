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
; realizar la sumatoria de todos los numeros que sean ingresados hasta que 
; se ingrese un numero negativo. El negativo no se suma.

msj1_E4 db "ingresa un numero : ",0

.code
	mainEj4 PROC
		;logica apartir de aqui
		
		mov ebx,0
		ciclo:

			mov edx, offset msj1_E4
			call writestring
			call crlf
		

			call readint ; eax 

			add ebx,eax

			cmp eax, 0
			jge ciclo

			sub ebx, eax
		
			mov eax, ebx
			call writedec

		
		exit	
	mainEj4 ENDP
	END mainEj4