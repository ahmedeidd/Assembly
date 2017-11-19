.586
 INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA
    number1 DWORD ?
	number2 DWORD ?
	number3 DWORD ?

	prompt1 BYTE "Enter Number1",0
	prompt2 BYTE "Enter Number2",0
	prompt3 BYTE "Enter Number3",0

	string    BYTE 20 DUP(?)
	result    BYTE 20 DUP(?)
	resultlbl BYTE "The Result Is:",0

.CODE
	MainProc PROC
		input prompt1,string,40
		atod string
		MOV number1,eax                ;number1=eax
		input prompt2,string,40
		atod string
		MOV number2,eax                ;number2=eax
		input prompt3,string,40
		atod string
		MOV number3,eax                ;number3=eax 

		MOV ebx,2                      ;ebx=2
		MUL ebx                        
		MOV number3,eax                ;number3*=2           => z=2z

		MOV eax,number1                ; eax=number1
		ADD number2,eax                ;number2 += number1   => y=y+x

		MOV eax,number3                ;eax=number3

		SUB number2,eax                ;number2 -= number3   => y=y-z => y=y+x-2z

		MOV eax,1                      ; eax=1
		ADD number2,eax                ;number2=number2+1    => y=y+x-2z+1

		NEG number2
		dtoa result,number2
		output resultlbl,result
	    MOV eax,0
	    ret
	 MainProc ENDP
END
                  
