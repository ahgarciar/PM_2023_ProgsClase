TITLE  EXAMEN SUMAS

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
msj1_8 db "¿Cuantas sumas deseas realizar?",0
msj2_8 db " + ", 0
msj3_8 db " = ", 0
msj4_8 db "Numero de Aciertos:", 0
msj5_8 db "Total de Sumas Aplicadas:", 0
msj6_8 db "Respuesta Correcta: ", 0

aciertos dword 0
total_sumas dword ?

;Mostrar errores

; mostrar mensajes con base en "porcentajes"/"calif"

.code

	main8 PROC	
		call randomize ; establecemos la semilla para los nums aleatorios

		mov edx, offset msj1_8  ; cuantas sumas deseas realzar? 
		call writeString
		call crlf

		call readint ; eax  
		call crlf
		
		mov total_sumas, eax

		mov ecx, eax    

		ciclo:
			mov eax, 101   ; n
			call randomrange  ; [0 n-1]

			call writedec   ; "num"

			mov edx, offset msj2_8   ;  +
			call writestring

			mov ebx, eax ; respaldamos primer valor aleatorio obtenido

			mov eax, 101   ; n
			call randomrange  ; [0 n-1]

			call writedec   ; "num"

			mov edx, offset msj3_8   ;  =
			call writestring

			; num2 = eax   num1 = ebx  
			add ebx, eax   ; ebx =  resultado de la suma

			call readint   ; eax

			cmp eax, ebx

			jne mostrarCorrecta   ; cuando no sea igual , entonces saltara
				; cuando sea correcta

				inc aciertos ; incremento el numero de aciertos
				jmp continuar
					
		mostrarCorrecta:
	
			mov edx, offset msj6_8 
			call writestring

			mov eax, ebx  
			call writedec

			call crlf

			call waitmsg

		continuar: 

		call crlf

		loop ciclo

			call crlf
			call crlf

			mov edx, offset msj4_8 
			call writestring

			mov eax, aciertos
			call writedec

			call crlf

			mov edx, offset msj5_8
			call writestring

			mov eax, total_sumas
			call writedec


		exit	
	
	main8 ENDP
	
	END main8
