.586
.MODEL FLAT
INCLUDE io.h    
.STACK 4096
.DATA
      temp DWORD ?
      p1 BYTE "Enter grade",0
      string BYTE 40 DUP(?)
      value BYTE 11 DUP(?),0
      sum BYTE "grades sum is",0
      avg BYTE "grades avg is",0
.CODE
MainProc PROC
     mov ecx,4                   ;ecx=4
     mov temp,ecx                ;temp=ecx   =>temp=4
     mov ebx,0                   ;ebx=0
     mov edx,1                   ;edx=1

    _loop:
          input p1,string,40
          atod string
          add ebx,eax                      ;ebx=ebx+eax
          imul edx,eax               

    loop _loop
         dtoa value,ebx                    ;value=ebx
         output sum,value
         xor edx,edx                       ;علشان القسمه متضربش لازم وحتما تتكتب
         mov eax,ebx                       ;eax=ebx                  =>eax=ebx+eax
         mov ebx,temp                      ;ebx=temp                 =>ebx=4  
         div ebx                           ;eax=(ebx+eax)/ebx        

         dtoa value,eax                    ;value=eax
         output avg,value

        ret

MainProc ENDP
END                            
