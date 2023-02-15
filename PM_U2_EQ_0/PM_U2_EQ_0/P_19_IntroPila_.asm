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
	main19 PROC
		;logica apartir de aqui
		
		mov ebx, 2  ;
		mov eax, 15

		mov edx, 10  ; colocando en el registro edx el valor 10
		; este su pudo obtener de diversas fomas o como reusltado de alguna operacion

		; se requiere utilizar al registro edx, sin embargo, no se quiere perder su valor
		;entonces, se recurre a la pila para almacenar temporalmente el valor del registro

		push edx ; almacenar el valor de edx en la pila

		mov edx, 0 ; cambia el valor de edx, y pone en este el nuevo valor
		div ebx 

		mov eax, edx  ; se coloca en eax el valor de edx para poder imprimir imprimirlo en consola

		call writedec
		call crlf

		pop eax ; recupera el ultimo valor que se guardo en la pila, 
		;en este caso, el valor de edx al comienzo del programa

		call writedec
		call crlf

		;chechar que tiene la pila ahora...
		mov eax, 2
		pop eax
		call writedec
		call crlf


		exit	
	main19 ENDP
	END main19