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
var1_8 dword  2d

.code
	main8 PROC
		;Logica del Programa

		;La division siempre debe realizarse entre eax y un operando
		; el cociente se almacena en eax
		; el residuo se almacena en edx
		; 
		; se recomienda limpiar el registro edx siempre que se vaya a realizar una division
		; 

		;EJEMPLO 1
		mov eax, 10
		mov edx, 0  ; limpieza del registro
		div var1_8  ; eax = 10/2		
		call writeint
		call crlf

		;Ejemplo 2
		mov eax, 9
		mov edx, 0
		div var1_8  ; cociente = eax  residuo = edx
		call writeint  ; eax = cociente
		call crlf

		;mov eax, edx  ; sobreescribir el cociente ; opcion 1
		xchg eax, edx ; intercambia el valor de los registro ; opcion 2
		call writeint

		exit	
	main8 ENDP
	END main8