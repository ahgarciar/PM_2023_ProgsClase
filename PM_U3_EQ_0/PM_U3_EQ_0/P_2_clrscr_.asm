TITLE CLRSCR

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

.code

	main2 PROC	
		;L�gica del Programa
	
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
