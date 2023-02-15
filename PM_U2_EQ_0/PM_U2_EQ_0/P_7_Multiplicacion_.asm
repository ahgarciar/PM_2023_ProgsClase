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
var1_7 dword  10d

.code
	main7 PROC
		;Logica del Programa

		;la multiplicacion en ensamblador unicamente
		; se puede realizar entre el registro eax y 
		; un operando proporcionado en la instruccion

		;el operando no puede ser un valor inmediato

		;El resultado de la multiplicacion se almacena en eax


		;Ejemplo 1
		mov eax, 5
		mul var1_7    ; eax = eax * var1_7
		call writeint

		;Ejemplo 2
		call crlf ; salto de linea
		mov eax, 5
		mov ebx, 2
		mov ecx, 3

		mul ebx  ; eax = eax * ebx
		mul ecx  ; (eax*ebx)*ecx

		call writeint

		;Ejemplo 3
		call crlf
		mov eax, 4
		;mul 5  ; Es una operacion no valida

		exit	
	main7 ENDP
	END main7