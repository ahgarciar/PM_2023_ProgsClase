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
var_14 dword ?

.code

main14 PROC
; L�gica del Programa

ImprimeCadenaLn "Ingresa el valor de X: "
call readint   ; eax

;mov edx, eax
mov var_14, eax

ImprimeCadenaLn "Ingresa el valor de Y: "
call readint

;///  edx = x    eax = y


;XalaY_ver2 edx, eax    ; la salida estar� en eax

;XalaY_ver2 2, 5    ; la salida estar� en eax

XalaY_ver2 var_14, eax    ; la salida estar� en eax


ImprimeCadenaLn "La potencia de X a la Y es : "
call writeint


exit

main14 ENDP

END main14
