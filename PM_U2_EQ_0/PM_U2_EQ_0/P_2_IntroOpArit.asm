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
var1_2 dword 10d
var2_2 dword 2d

.code
	main2 PROC
		;Logica del Programa
		
		;add se rige por las misma reestricciones que mov
		; en cuanto a los operandos!

		mov eax, var1_2
		add eax, var2_2  ; resultado en -> eax 


		exit	
	main2 ENDP
	END main2