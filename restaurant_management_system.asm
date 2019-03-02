.model small
.stack 100h
.data
msg1 dw "welcome to our project $"
msg2 dw "which menu do you want to select$" 
msg3 dw "1.Coffe $"
msg4 dw "2.Tea $"
msg5 dw "3.Cold Drinks $"
msg6 dw "4.water $"
msg7 dw "Please select the menu number: $" 
msg8 dw "Enter quantity [max 4]: $" 
msg9 dw "sorry not avabile able $"
msg10 dw "your bill: $"
msg11 dw " TK $" 
msg12 dw "want to reorder press 2: $"
msg13 dw "press E for exit:$"
.code
main proc 

mov ax,@data
mov ds,ax 

mov ah,3    ; Get the current cursor position
mov bh,0
int 10h

mov ah,2    ; Set cursor position
mov bh,0
mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
int 10h

mov ah,9h
mov bl,11   ;color
mov cx, 10000  ;how many word
int 10h
lea dx,msg1 ;print msg
int 21h  

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 

mov ah,3    ; Get the current cursor position
mov bh,0
int 10h

mov ah,2    ; Set cursor position
mov bh,0
mov dl,26   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
int 10h

mov ah,9h
lea dx,msg2  ;print msg
int 21h 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 

mov ah,9h
lea dx,msg3  ;print msg
int 21h 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 

mov ah,9h
lea dx,msg4  ;print msg
int 21h 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h

mov ah,9h
lea dx,msg5  ;print msg
int 21h

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 

mov ah,9h
lea dx,msg6  ;print msg
int 21h 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h  

mov ah,9h
lea dx,msg7  ;print msg
int 21h

mov ah,1               ;scan
int 21h
mov bl,al   

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h  


cmp bl,'1'
je coffe

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h  


cmp bl,'2'
je tea

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h  


cmp bl,'3'
je cold

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h  


cmp bl,'4'
je water

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h  


mov ah,3    ; Get the current cursor position
mov bh,0
int 10h

mov ah,2    ; Set cursor position
mov bh,0
mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
int 10h


lea dx,msg9              ;MSG
mov ah,9
int 21h    
Jmp Exit 
    
    
coffe:
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 

  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  lea dx,msg8
  mov ah,9
  int 21h 
   
  mov ah,1               ;scan
  int 21h
  mov bl,al 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  
  mov ah,9h
  lea dx,msg10  ;print msg
  int 21h 

  mov al,bl
  mov bh,2
  mul bh 
  mov dl,al
  sub dl,30h
  mov ah,2
  int 21h 
  
  mov ah,9h
  lea dx,msg11  ;print msg
  int 21h  
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h  
  
  lea dx,msg12              ;MSG
  mov ah,9
  int 21h 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  
  lea dx,msg13              ;MSG
  mov ah,9
  int 21h 
  
  mov ah,1               ;scan
  int 21h
  mov bl,al 
   
  cmp bl,'2'
  je start
  
  cmp bl,'E'
  je Exit
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h

  lea dx,msg9              ;MSG
  mov ah,9
  int 21h  
  Jmp Exit
  
tea:
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 

  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  lea dx,msg8
  mov ah,9
  int 21h 
   
  mov ah,1               ;scan
  int 21h
  mov bl,al 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  
  mov ah,9h
  lea dx,msg10  ;print msg
  int 21h 

  mov al,bl
  mov bh,2
  mul bh 
  mov dl,al
  sub dl,30h
  mov ah,2
  int 21h 
  
  mov ah,9h
  lea dx,msg11  ;print msg
  int 21h  
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h  
  
  lea dx,msg12              ;MSG
  mov ah,9
  int 21h 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  
  lea dx,msg13              ;MSG
  mov ah,9
  int 21h 
  
  mov ah,1               ;scan
  int 21h
  mov bl,al 
   
  cmp bl,'2'
  je start
  
  cmp bl,'E'
  je Exit
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h

  lea dx,msg9              ;MSG
  mov ah,9
  int 21h  
  Jmp Exit
  
 cold:
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 

  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  lea dx,msg8
  mov ah,9
  int 21h 
   
  mov ah,1               ;scan
  int 21h
  mov bl,al 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  
  mov ah,9h
  lea dx,msg10  ;print msg
  int 21h 

  mov al,bl
  mov bh,2
  mul bh 
  mov dl,al
  sub dl,30h
  mov ah,2
  int 21h 
  
  mov ah,9h
  lea dx,msg11  ;print msg
  int 21h  
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h  
  
  lea dx,msg12              ;MSG
  mov ah,9
  int 21h 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  
  lea dx,msg13              ;MSG
  mov ah,9
  int 21h 
  
  mov ah,1               ;scan
  int 21h
  mov bl,al 
   
  cmp bl,'2'
  je start
  
  cmp bl,'E'
  je Exit
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h

  lea dx,msg9              ;MSG
  mov ah,9
  int 21h  
  Jmp Exit
  
 water:
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 

  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  lea dx,msg8
  mov ah,9
  int 21h 
   
  mov ah,1               ;scan
  int 21h
  mov bl,al 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  
  mov ah,9h
  lea dx,msg10  ;print msg
  int 21h 

  mov al,bl
  mov bh,2
  mul bh 
  mov dl,al
  sub dl,30h
  mov ah,2
  int 21h 
  
  mov ah,9h
  lea dx,msg11  ;print msg
  int 21h  
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h  
  
  lea dx,msg12              ;MSG
  mov ah,9
  int 21h 
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h
  
  lea dx,msg13              ;MSG
  mov ah,9
  int 21h 
  
  mov ah,1               ;scan
  int 21h
  mov bl,al 
   
  cmp bl,'2'
  je start
  
  cmp bl,'E'
  je Exit
  
  mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h

  lea dx,msg9              ;MSG
  mov ah,9
  int 21h  
  Jmp Exit
  
  
   
start:

mov ah,2      
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov dl,0dh
  int 21h      ;new line
  mov dl,0ah
  int 21h 
  
  mov ah,3    ; Get the current cursor position
  mov bh,0
  int 10h

  mov ah,2    ; Set cursor position
  mov bh,0
  mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
  int 10h

mov ah,9h
lea dx,msg2  ;print msg
int 21h 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 

mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 
  
mov ah,9h
lea dx,msg3  ;print msg
int 21h 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 

mov ah,9h
lea dx,msg4  ;print msg
int 21h 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h

mov ah,9h
lea dx,msg5  ;print msg
int 21h

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 

mov ah,9h
lea dx,msg6  ;print msg
int 21h 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h  

mov ah,9h
lea dx,msg7  ;print msg
int 21h

mov ah,1               ;scan
int 21h
mov bl,al   

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h  


cmp bl,'1'
je coffe

cmp bl,'2'
je tea

cmp bl,'3'
je cold 

cmp bl,'4'
je water 

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h 

mov ah,3    ; Get the current cursor position
mov bh,0
int 10h

mov ah,2    ; Set cursor position
mov bh,0
mov dl,32   ; New column. In an 80 column text mode this will just about center
            ; the 3 characters 
int 10h

mov ah,2      
mov dl,0dh
int 21h      ;new line
mov dl,0ah
int 21h

lea dx,msg9              ;MSG
mov ah,9
int 21h  
Jmp Exit     
Exit:
   
    
    MAIN  ENDP

 END MAIN