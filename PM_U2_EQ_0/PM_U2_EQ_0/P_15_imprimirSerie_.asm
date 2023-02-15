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
	main15 PROC
		;logica apartir de aqui
		;imprimir del 1 al 10 con saltos condicionales

		mov eax, 1
		
		repetir:

		call writedec 
		call crlf
		add eax, 1

		cmp eax, 10

		jle repetir  ; mientras sea menor o igual, repite...		

		; algunos saltos...

		;jz = salta si es cero / salta si es igual
		;je = salta si es igual
		;jl = salta si es menor
		;jg = salta si es mayor
		
		;jnz = salta si no es cero / salta si no es igual
		;jne = salta si no es igual
		;jnl = salta si no menor
		;jng = salta si no es mayor

		;jle = salta si es menor o igual
		;jge = salta si es mayor o igual
		
		exit	
	main15 ENDP
	END main15