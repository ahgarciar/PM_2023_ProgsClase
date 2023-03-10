TITLE 

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

INCLUDE MACROS.inc

.data
var_14 dword ?

.code

main14 PROC
; Lógica del Programa

ImprimeCadenaLn "Ingresa el valor de X: "
call readint   ; eax

;mov edx, eax
mov var_14, eax

ImprimeCadenaLn "Ingresa el valor de Y: "
call readint

;///  edx = x    eax = y


;XalaY_ver2 edx, eax    ; la salida estará en eax

;XalaY_ver2 2, 5    ; la salida estará en eax

XalaY_ver2 var_14, eax    ; la salida estará en eax


ImprimeCadenaLn "La potencia de X a la Y es : "
call writeint


exit

main14 ENDP

END main14
