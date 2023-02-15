TITLE Trabajo 1
; DESCRPICION
; Objetivo: Primera ejecucion de masm
;
; Autore(s) :
	;         Garcia Ruiz Alejandro H.
	; Semestre: 8vo Semestre ISC
	; FIN DESCRPICION
	INCLUDE Irvine32.inc
	.data
	; Area de Declaracion de Variables

	;"tipos de datos" = byte, word, dword
	variable1_2 byte 10    ; 1 byte 
	variable2_2 word 240   ; 2 bytes
	variable3_2 dword 300h  ; 4 bytes

	.code
	main2 PROC
	; Logica del Programa

	;REGISTROS DE PROPOSITO GENERAL: EAX, EBX, ECX, EDX

	; EAX = 32BITS 

	; E = 16BITS [ AX = 16BITS ]

	; CADA REGISTRO DE PROP. GRAL. CUENTA CON LA PARTE E [EXTEND] Y SU COMPLEMENTO [EJ: AX]
	;LA PARTE EXTENDIDA, NO SE PUEDE UTILIZAR INDEPENDIENTEMENTE DEL REGISTRO
	; SIN EMBARGO, SU COMPLEMENTO, SI PUEDE SER UTILIZADO

	; SI SE UTILIZA AX, ENTONCES SE TENDRA UNA "VARIABLE" DE 16BITS

	;A SU VEZ, AX, O SUS HERMANOS [BX,CX,DX], SE PUEDEN DESCOMPONER EN;
	; PARTE ALTA Y PARTE BAJA, CADA UNO CON 8BITS DE CAPACIDAD
	;
	; EJEMPLO : AX SERIA  AH Y AL 

	;MOV DESTINO, ORIGEN   ->>> DESTINO = ORIGEN

	MOV AH,12D

	MOV AX, 43H

	MOV EAX, 1

	exit
	main2 ENDP
	END main2