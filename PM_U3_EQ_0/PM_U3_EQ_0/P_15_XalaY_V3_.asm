TITLE 

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

INCLUDE MACROS.inc

.data
var_x_15 dword ?
var_y_15 dword ?

.code

main15 PROC
; L�gica del Programa

ImprimeCadenaLn "Ingresa el valor de X: "
call readint   ; eax

;mov edx, eax
mov var_x_15, eax

ImprimeCadenaLn "Ingresa el valor de Y: "
call readint

mov var_y_15, eax

;///  edx = x    eax = y


;XalaY_ver3 edx, eax    ; la salida estar� en eax

;XalaY_ver3 2, 5    ; la salida estar� en eax

;XalaY_ver3 var_15, eax    ; la salida estar� en eax

;mov edx, [200]
;d = dump         e200  

;mov ebx, var_x_15

XalaY_ver3 var_x_15, var_y_15  ; la salida estar� en eax


ImprimeCadenaLn "La potencia de X a la Y es : "
call writeint


exit

main15 ENDP

END main15
