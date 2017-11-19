.586
.Model flat
include io.h
.stack 4096
.data
       number1 dword ?
       NUMBER2 DWORD ?
       prompt1   BYTE    "Enter length", 0
       prompt2   BYTE    "Enter width", 0
       STRING    BYTE  40 DUP (?),0
       resultLbl BYTE  "The sum is", 0
       sum       BYTE    11 DUP (?), 0

.CODE
     MainProc PROC
                    input prompt1 ,string,40
                    atod string
                    mov number1 ,eax                 ;number1=eax
                    input prompt2, string ,40
                    atod string
                    mov number2,eax                  ;number2=eax
                   

                    mov ebx , 2                      ;ebx=2
                    mov eax , number1                ;eax=number1
                    mul ebx                          ;eax=2*number1
                    mov number1,eax                  ;number1=2*number1

                    mov ebx , 2                      ;ebx=2
                    mov eax , number2                ;eax=number2
                    mul ebx                          ;eax=2*number2

                    add number1 , eax                ;number1=number1+eax       =>number1=2*number1+2*number2

                    dtoa sum,number1                 ;sum=number1
                    output resultLbl, sum
                    mov eax, 0
ret 
MainProc endp
end
