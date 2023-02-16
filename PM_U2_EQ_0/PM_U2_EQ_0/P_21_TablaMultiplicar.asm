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
msj1_21 db " x ",0
msj2_21 db " ?= ",0
msj3_21 db "Que tabla quieres vsualizar?:",0


.code
	main21 PROC
		;logica apartir de aqui
		
		;desplegar la tabla de multiplicar indicada por el usuario...

		mov edx, offset msj3_21  ; de qu tabla queires el examen...
		call writestring
		call crlf

		call readint  ; la tabla que se quiere visualizar
		mov ebx, 1 ;contador de la tabla

		ciclo: 

			call writedec ; imprime la tabla

			mov edx, offset msj1_21
			call writestring    ; X

			xchg eax, ebx
			call writedec

			mov edx, offset msj2_21
			call writestring
		
			; hasta aqui en eax esta el contador y ebx el valor de la tabla
			; si se hace una multiplicacion se va a perder el contador...
			; necesitamos evitarlo ... como ? 

			mov ecx, eax  ; respaldo del valor del contador... 

			mul ebx  ; eax =  eax * ebx = contador * tabla

			call writedec ; imprime el resultado de la multiplicacion

			mov eax, ecx ; recupera el valor de la tabla en eax			

			inc eax
			xchg eax, ebx

			call crlf

			cmp ebx, 10
			jle ciclo



		exit	
	main21 ENDP
	END main21