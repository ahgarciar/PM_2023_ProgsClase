TITLE RANDOM NUMBER

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

	main4 PROC	
		;L�gica del Programa
	
		; randomize   ; establece la semilla 
		call randomize  ; se recomienda utilizarlo solo una vez al inicio del programa


		; randomrange ; [0 n-1]    n = eax

		mov eax, 11
		call randomrange    ; [0 10]    ; eax

		call writedec


		call crlf 
		call crlf
		mov ecx, 10
		ciclo:
			mov eax, 11 ; n
			call randomrange    ; [0 10]    ; eax
			call writedec
			call crlf

			loop ciclo


		exit	
	
	main4 ENDP
	
	END main4
