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
msj1_E3 db "ingresa un numero : ",0
.code
	mainE3 PROC
		;Logica del Programa
		;leer numeros ingresados,contar los numeros ingresados, el programa se lee cuando 
		;se ingresa un numero negativo y no lo cuenta
mov ebx,0
		ciclo:
			mov edx, offset msj1_E3
			call writestring
			call crlf
			inc ebx
			call readint ; eax 
			cmp eax, 0

			jge ciclo
			dec ebx
			mov eax, ebx
			call writedec



		

		

		exit	
	mainE3 ENDP
	END mainE3