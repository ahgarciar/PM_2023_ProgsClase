TITLE  Mensajes Emergentes

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
titulo_6 db "EJEMPLO", 0 
contenido_6 db "Esto es un Ejemplo.", 0dh, 0ah , 0dh, 0ah ,"Solo para comprobar el funcionamiento de los mensajes emergentes en MASM"
contenido_7 db 0dh, 0ah ,"Saludos" , 0dh, 0ah , 0dh, 0ah
contenido_8 db "Atte. Yo :)", 0
; 0dh, 0ah = ENTER   =>  CrLF
.code

	main6 PROC	
		;Lógica del Programa
		;
		
		mov edx, offset contenido_6
		mov ebx, offset titulo_6

		call msgbox
		
		exit	
	
	main6 ENDP
	
	END main6
