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
var1_9 dword  2d
message1 db "ingrese m" ,0
message2 db "ingrese x", 0
message3 db "ingrese b", 0
message4 db "el valor de y es : ",0



.code
	main9 PROC
		;Logica del Programa

		mov edx, offset message1
		call writestring
		call crlf

		call readint  ;readint almacena en eax  
		mov ecx, eax  ; respaldar en ecx el valor de eax

		mov edx, offset message2
		call writestring
		call crlf

		call readint
		mul ecx   ; eax que multiplica a ecx = a m que multiplica a x
		
		mov ecx, eax

		mov edx, offset message3
		call writestring
		call crlf
        
		call readint   ; valor de b

		add eax, ecx ; hace la suma



		mov edx, offset message4
		call writestring
		call crlf

		call writeint



		
		exit	
	main9 ENDP
	END main9