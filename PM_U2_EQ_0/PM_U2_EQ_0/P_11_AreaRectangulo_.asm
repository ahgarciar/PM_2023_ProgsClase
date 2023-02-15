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

message1_11 db "Ingresa la base: " , 0
message2_11 db "Ingresa la altura" ,0
message3_11 db "Resultado: ",0



.code
	main11 PROC
		;Logica del Programa

		;****mensaje 1
		mov edx , OFFSET message1_11
		call writestring 
		call crlf

		call readint ;leyendo el valor eax 

		mov ebx , eax ; la base esta en ebx

		;****mensaje 2
		mov edx , OFFSET message2_11
		call writestring 
		call crlf

		call readint ;leyendo el valor eax

		;****mensaje 3
		mov edx , OFFSET message3_11
		call writestring 
		call crlf

		mov ebx , eax

		mul ebx
		;el resultado se guarda en eax
		call writeint
				
		exit	
	main11 ENDP
	END main11