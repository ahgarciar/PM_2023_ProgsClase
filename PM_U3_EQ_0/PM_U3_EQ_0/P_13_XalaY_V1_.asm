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

.code

main13 PROC
; L�gica del Programa

ImprimeCadenaLn "Ingresa el valor de X: "
call readint   ; eax

mov ebx, eax

ImprimeCadenaLn "Ingresa el valor de Y: "
call readint


;///  ebx = x    eax = y

XalaY_ver1    ; sin par�mtros   ,  la salida estar� en eax


ImprimeCadenaLn "La potencia de X a la Y es: "
call writeint


exit

main13 ENDP

END main13
