.586
.MODEL FLAT
include io.h
.stack 4096
.data
	
	x1 BYTE "enter the Number of pinnes       "	,0
	x2 BYTE "enter the Number of Nickles      "	,0	;5
	x3 BYTE "enter the Number of Dimes        "	,0	;10
	x4 BYTE "enter the Number of quartwe      "	,0	;15
	x5 BYTE "enter the Number of fifty_Cent   "	,0	;50
	x6 BYTE "enter the Number of doular       "	,0	;100
	x7 BYTE "the total salary in doulars  is  "	,0
	x8 BYTE "the and the reminder in pinnes is" ,0


	result DWORD ?
	num DWORD 11 DUP(?)
	stor BYTE 4 DUP (?)
	
.code
MainProc Proc
	input x1,stor,40
	atod stor
	mov result,eax
	
	input x2,stor,40
	atod stor
	imul eax,5
	add result,eax
	
	input x3,stor,40
	atod stor
	imul eax,10
	add result,eax
	
	input x4,stor,40
	atod stor
	imul eax,25
	add result,eax
	
	input x5,stor,40
	atod stor
	imul eax,50
	add result,eax
	
	input x6,stor,40
	atod stor
	imul eax,100
	add result,eax
	
	dtoa stor,result
	output x7,stor

	mov eax,0
	mov eax,result

	mov ecx ,100

	cdq
	idiv ecx

	mov stor,0
	
	
	dtoa stor,edx
	output x8,stor



	mov eax,0
	ret
	MainProc ENDP
END
