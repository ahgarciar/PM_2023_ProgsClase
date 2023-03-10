TITLE  EJEMPLO CON ALEATORIOS

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
msj1_5 db "Quieres ser mi amigo ? ", 0 

msj2_5 db "Si :/", 0
msj3_5 db "Ya que... ", 0 
msj4_5 db "NO ", 0 

.code

	main5 PROC	
		;Lógica del Programa
		;
		call randomize ; establece la semilla

		mov edx, offset msj1_5
		call writestring
		call crlf

		;;;;;;;;;;;;;;;;;;;
		mov eax, 3
		call randomrange   ; // 0 1 2   ; eax
		
		call writedec   ; opcion que aleatoriamente se escogio

		cmp eax, 1

		jg si_
		je yaque
			; si es menor... no

			mov edx, offset msj4_5
			jmp continuar

		si_:
			mov edx, offset msj2_5
			jmp continuar

		yaque:
			mov edx, offset msj3_5
			jmp continuar


		continuar:
			
			call writestring

		exit	
	
	main5 ENDP
	
	END main5
