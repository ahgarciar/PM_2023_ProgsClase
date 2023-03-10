TITLE WAITMSG

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
msj1_3 db "Ingresa el valor de a:", 0dh, 0ah, 0
msj2_3 db "Ingresa el valor de b:", 0dh, 0ah, 0
msj3_3 db "La Suma de los valores es :", 0dh, 0ah, 0

msj4_3 db 0d, 0h,"PROCESANDO", 0d, 0h, 0

.code

	main3 PROC	
		;Lógica del Programa
	
		;waitmsg despliega un mensaje indicando al usuario que el programa
		; continuará hasta que este presione alguna tecla.

		; el valor de la tecla no se almacena en ningun lado 

		mov edx, offset msj1_3
		call writeString

		call readint     ; eax
		mov ebx, eax     ; ebx = a

		mov edx, offset msj4_3  ; procesando
		call writeString

		mov eax, 2000
		call delay

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov edx, offset msj2_3
		call writeString

		call readint ; eax
		add ebx, eax

		mov edx, offset msj4_3
		call writeString

		mov eax, 2000
		call delay

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		call waitmsg   ;  

		mov edx, offset msj3_3
		call writeString

		mov eax, ebx

		call writedec


		exit	
	
	main3 ENDP
	
	END main3
