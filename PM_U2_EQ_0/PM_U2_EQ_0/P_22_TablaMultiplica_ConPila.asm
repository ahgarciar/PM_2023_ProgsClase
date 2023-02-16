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
msj1_22 db " x ",0
msj2_22 db " ?= ",0
msj3_22 db "Que tabla quieres vsualizar?:",0


.code
	main22 PROC
		;logica apartir de aqui
		
		;desplegar la tabla de multiplicar indicada por el usuario...

		mov edx, offset msj3_22  ; de qu tabla queires el examen...
		call writestring
		call crlf

		call readint  ; la tabla que se quiere visualizar
		mov ebx, 1 ;contador de la tabla

		ciclo: 

			call writedec ; imprime la tabla

			mov edx, offset msj1_22
			call writestring    ; X

			xchg eax, ebx
			call writedec

			mov edx, offset msj2_22
			call writestring
		
			;;;; hasta aqui en eax esta el contador y ebx el valor de la tabla
			
			; si se hace una multiplicacion se va a perder el contador...
			; necesitamos evitarlo ... como ? 

			
			push eax  ; respaldo del valor del contador... toma el valor de eax y lo guarda en la pila

			mul ebx  ; eax =  eax * ebx = contador * tabla

			call writedec ; imprime el resultado de la multiplicacion

			pop eax  ;recupera el valor de la tabla almacenado en la pila y lo coloca en eax			

			; en este punto... eax = contador y ebx = tabla

			inc eax  ; incrementa el contador en 1
			xchg eax, ebx  ; intercambia los registros para que en eax = tabla y en ebx = contador

			call crlf

			cmp ebx, 10
			jle ciclo



		exit	
	main22 ENDP
	END main22