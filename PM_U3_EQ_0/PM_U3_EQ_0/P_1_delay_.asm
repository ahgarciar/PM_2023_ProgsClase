TITLE DELAY 

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

	main1 PROC	
		;L�gica del Programa
	
		;delay detiene la ejecuci�n del programa la cantidad de milisegundos indicada
		; en eax

		mov eax, 5
		mov ebx, 6


		call writedec

		call crlf

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov eax, 5000  ; ms
		call delay

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


		mov eax, ebx

		call writedec



		exit	
	
	main1 ENDP
	
	END main1
