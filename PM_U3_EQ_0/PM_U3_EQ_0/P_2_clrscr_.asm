TITLE CLRSCR

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

.code

	main2 PROC	
		;Lógica del Programa
	
		;CLRSCR LIMPIA LA PANTALLA (CONSOLA)

		mov eax, 5
		mov ebx, 6


		call writedec

		call crlf

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov eax, 5000  ; ms
		call delay

		CALL CLRSCR    ; LIMPIA LA PANTALLA

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


		mov eax, ebx

		call writedec



		exit	
	
	main2 ENDP
	
	END main2
