   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

XalaY_ver1 MACRO 
	.data
	.code
		 ;  ebx = x    eax = y

		 push ecx 


		mov ecx, eax   ; cantidad de veces que se hará la multiplicación de x por si mismo

		mov eax, ebx ; valor de X 
		dec ecx

		ciclo:
			mul ebx
		loop ciclo

		;TAREA: 
		; y = 1 hay que mejorarlo
		; y = 0 no funciona y hay que corregirlo


		 pop ecx 
ENDM


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

XalaY_ver2 MACRO x, y 
	.data
	.code		 
		 push ecx    ; y 
		 push ebx    ; x

		 mov ecx, y  ; cantidad de veces que se hará la multiplicación de x por si mismo
		 mov ebx, x

		mov eax, ebx ; valor de X 

		dec ecx

		ciclo:
			mul ebx
		loop ciclo


		 pop ebx 
		 pop ecx 

ENDM


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

XalaY_ver3 MACRO x, y 
	.data
		valX dword x
		valY dword y
	.code		 
		 push ecx    ; y 
		 push ebx    ; x

		 mov ecx, valY  ; cantidad de veces que se hará la multiplicación de x por si mismo
		 mov ebx, valX

		mov eax, ebx ; valor de X 

		dec ecx

		ciclo:
			mul ebx
		loop ciclo


		 pop ebx 
		 pop ecx 

ENDM


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

sumaAB MACRO A, B  ; el resultado lo guardaremos en eax 
	.data
	.code		 		 		
		 MOV EAX, A
		 ADD EAX, B				 
ENDM


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

checarPar MACRO numero 
	local continuar, esPar, msj1, msj2
	.data
	msj1 db "PAR", 0
	msj2 db "IMPAR", 0
	.code		 		 
		push edx
		push eax
		push ebx

		mov edx,  0

		mov eax, numero
		mov ebx, 2

		div ebx   ; eax / 2

		cmp edx, 0

		jz esPar
			;no es par
			mov edx, offset msj2
			jmp continuar
		esPar:
			mov edx, offset msj1

		continuar: 

		 call writeString

		pop ebx
		pop eax
		pop edx
ENDM


ImprimeCadenaLn MACRO cadena
	LOCAL cad
	.data
		cad db cadena, 0
	.code
		push edx
		mov edx, offset cad
		call writestring
		call crlf
		pop edx
ENDM

ImprimeCadena MACRO cadena
	LOCAL cad
	.data
		cad db cadena, 0
	.code
		push edx
		mov edx, offset cad
		call writestring
		pop edx
ENDM

