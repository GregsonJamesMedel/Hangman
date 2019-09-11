.MODEL SMALL        ;TAPOS AT LAST! :D
.STACK 200
.DATA


        hangman db 0ah,0dh,'       ------------------------------------------------------------------'
	            db 0ah,0dh,'      |  __   __  _______  __    _  _______  __   __  _______  __    _  |'       
                db 0ah,0dh,'      | |  | |  ||   _   ||  |  | ||       ||  |_|  ||   _   ||  |  | | |'      
                db 0ah,0dh,'      | |  |_|  ||  |_|  ||   |_| ||    ___||       ||  |_|  ||   |_| | |'      
                db 0ah,0dh,'      | |       ||       ||       ||   | __ |       ||       ||       | |'      
                db 0ah,0dh,'      | |       ||       ||  _    ||   ||  ||       ||       ||  _    | |'      
                db 0ah,0dh,'      | |   _   ||   _   || | |   ||   |_| || ||_|| ||   _   || | |   | |'      
                db 0ah,0dh,'      | |__| |__||__| |__||_|  |__||_______||_|   |_||__| |__||_|  |__| |'
		        db 0ah,0dh,'       ------------------------------------------------------------------'
		        db 0ah,0dh,'    ========================================================================'
		        db 0ah,0dh,'    ========================================================================$'		
        
                                     
                                            
        MSG DB 0DH,0AH,'                                PRESS Z TO CLEAR...$'
        
	    CHOICES DB 0DH,0AH,'                            A. START'
                DB 0DH,0AH,'                            B. HELP'
                DB 0DH,0AH,'                            C. DEVELOPERS'
                DB 0DH,0AH,'                            D. EXIT'
                DB 0DH,0AH,'                            Enter your choice: $'
        
	NW DB 0DH,0AH,'$'

        ;FOR DEVELOPERS
        CREDIT  DB 0DH,0AH,'                            PROGRAMMED BY: '
                DB 0DH,0AH,'                         * GREGSON JAMES ROSCAIN MEDEL'
                DB 0DH,0AH,'                         * LAINE TRINIDAD$'

        ;FOR HELP
       INSTRUCT DB 0DH,0AH,'                           INSTRUCTIONS:'
                DB 0DH,0AH,'                       * PROGRAM HAS TEN QUESTIONS.'
                DB 0DH,0AH,'                       * ANSWER THE QUESTION'
		        DB 0DH,0AH,'                       * ENTER THE NUMBER WHICH CONTAINS YOUR ANSWER.'
                DB 0DH,0AH,'                       * DO NOT ENTER ANY CHARACTER OTHER THAN 1 ,2 OR 3.$'
        
       CONTINUE DB 0AH,0DH,'                       You lose! :(' 
                DB 0AH,0DH,"                Should've entered 1,2 or 3."
                DB 0AH,0DH,"                         "  
		        db 0ah,0dh,"====================================================   "        ;IF QUESTION NUMBER 10 IS WRONG
		TRY     DB 0AH,0DH,'                Do you want to play again?,'
                DB 0AH,0DH,'               PRESS Y IF YES PRESS N IF NO: ','$'   
                   
               
                    
          
     ;QUESTIONS FOR NEWBIE MODE     
          
                 
     QUESTION1_EASY DB 0AH,0DH,'I: Who is the national hero of the philippines? ' ;FOR QUESTION NUMBER 1
                  DB 0AH,0DH,'     1: Jose Rizal'
                  DB 0AH,0DH,'     2: Gregson Medel'
                  DB 0AH,0DH,'     3: Gregorio Del Pilar'
                  DB 0AH,0DH,'     Choose 1,2, Or 3: ','$'            
                 
                 
     QUESTION2_EASY DB 0AH,0DH,'II: Who is the father of noynoy aquino? '             ;FOR QUESTION NUMBER 2
                  DB 0AH,0DH,'      1: Manoy' 
                  DB 0AH,0DH,'      2: Ninoy Aquino'
                  DB 0AH,0DH,'      3: Moymoy Palaboy'           
                  DB 0AH,0DH,'      Choose 1,2, Or 3: ','$'            
      
      
     QUESTION3_EASY DB 0AH,0DH,'III: How many hours are their in one day? '             ;FOR QUESTION NUMBER 3
                  DB 0AH,0DH,'      1: 6' 
                  DB 0AH,0DH,'      2: 5'
                  DB 0AH,0DH,'      3: 24'           
                  DB 0AH,0DH,'      Choose 1,2, Or 3: ','$'
                   
     QUESTION4_EASY DB 0AH,0DH,'IV: How many days are their in one year? '             ;FOR QUESTION NUMBER 4
                  DB 0AH,0DH,'      1: 360' 
                  DB 0AH,0DH,'      2: 500'
                  DB 0AH,0DH,'      3: 240'           
                  DB 0AH,0DH,'      Choose 1,2, Or 3: ','$' 
                 
      
     QUESTION5_EASY DB 0AH,0DH,'V: When did the martial law happened? '             ;FOR QUESTION NUMBER 5
                  DB 0AH,0DH,'      1: 2014' 
                  DB 0AH,0DH,'      2: 1996'
                  DB 0AH,0DH,'      3: 1972'           
                  DB 0AH,0DH,'      Choose 1,2, Or 3: ','$' 
      
   
      
    ;QUESTIONS FOR EXPERIENCED MODE             
                                 
                 
	QUESTION1_MEDIUM DB 0AH,0DH,'I: What is the capital of japan? '
			   DB 0AH,0DH,'         1: Tokyo '
			   DB 0AH,0DH,'         2: Heroshima '
			   DB 0AH,0DH,'         3: Yoshida ' 
			   DB 0AH,0DH,'         Choose 1,2 or 3: ','$'

	QUESTION2_MEDIUM DB 0AH,0DH,'II: What is the currency used id Iraq? '
			   DB 0AH,0DH,'         1: Peso '
			   DB 0AH,0DH,'         2: Dinar '
			   DB 0AH,0DH,'         3: dollar '
			   DB 0AH,0DH,'         Choose 1,2 or 3: ','$'

	QUESTION3_MEDIUM DB 0AH,0DH,'III: What is the capital of singpore? '
			   DB 0AH,0DH,'         1: Singapore '
			   DB 0AH,0DH,'         2: Manila '
			   DB 0AH,0DH,'         3: phan pnen'
		       DB 0AH,0DH,'         Choose 1,2 or 3: ','$'

	QUESTION4_MEDIUM DB 0AH,0DH,'IV: What is the capital of israel? '
			   DB 0AH,0DH,'         1: Jerusalem '
			   DB 0AH,0DH,'         2: Manila '
			   DB 0AH,0DH,'         3: Cebu '
			   DB 0AH,0DH,'         Choose 1,2 or 3: ','$'

	QUESTION5_MEDIUM DB 0AH,0DH,'V: Who is the founder of microsoft? '
			   DB 0AH,0DH,'         1: Gregson Medel '
		 	   DB 0AH,0DH,'         2: Mark zuckerburg '
			   DB 0AH,0DH,'         3: Bill Gates '
			   DB 0AH,0DH,'         Choose 1,2 or 3: ','$'

		     
			     
	;QUESTIONS FOR HANGMAN LORD MODE		     

	
	QUESTION1_HARD DB 0AH,0DH,'I: Your brain keeps developing until your___? '
			   DB 0AH,0DH,'       1: 40s '
			   DB 0AH,0DH,'       2: 50s '
			   DB 0AH,0DH,'       3: 60s ' 
			   DB 0AH,0DH,'       Choose 1,2 or 3: ','$'

	QUESTION2_HARD DB 0AH,0DH,'II: Who is the father of biology? '
			   DB 0AH,0DH,'       1: Gregor Mendel '
			   DB 0AH,0DH,'       2: Aristotle '
			   DB 0AH,0DH,'       3: Plato' 
			   DB 0AH,0DH,'       Choose 1,2 or 3: ','$'

	QUESTION3_HARD DB 0AH,0DH,'III: What is the atomic number of phosporous? '
			   DB 0AH,0DH,'       1: 13 '
			   DB 0AH,0DH,'       2: 15 '
			   DB 0AH,0DH,'       3: 16 '
			   DB 0AH,0DH,'       Choose 1,2 or 3: ','$'

	QUESTION4_HARD DB 0AH,0DH,'IV:  What is the atomic symbol of sodium? '
			   DB 0AH,0DH,'       1: Ca '
			   DB 0AH,0DH,'       2: sm '
			   DB 0AH,0DH,'       3: na '
			   DB 0AH,0DH,'       Choose 1,2 or 3: ','$'

	QUESTION5_HARD DB 0AH,0DH,'V: What is the atomic number of chronium? '
			   DB 0AH,0DH,'       1: 22 '
			   DB 0AH,0DH,'       2: 33 '
			   DB 0AH,0DH,'       3: 24 '
			   DB 0AH,0DH,'       Choose 1,2 or 3: ','$'



	;MODE
	
	MODE DB 0AH,0DH,'                                7: NEWBIE'
	     DB 0AH,0DH,'                                8: EXPERIENCED'
	     DB 0AH,0DH,'                                9: HANGMAN LORD'
	     DB 0AH,0DH,'                                ENTER YOUR CHOICE: ','$'
	     
	XX DB   0AH,0DH,'       YOUR TOTAL SCORE IS: $'

    SCORE DB 00 
    
    wrong db 00d
     
    head1_x db 5
    head1_y db 60
    
    head2_x db 9
    head2_y db 61
    
    head3_x db 8
    head3_y db 67
    
    head4_x db 4
    head4_y db 66 
    
    mouth_x db 8
    mouth_y db 62 
    
    body_x db 10
    body_y db 64
    
    hand1_x db 11
    hand1_y db 59
    
    hand2_x db 11
    hand2_y db 65
    
    legs1_x db 16
    legs1_y db 63
    
    legs2_x db 16
    legs2_y db 65
    
    floor_x db 22 
    floor_y db 56
    
    pole_x db 21 
    pole_y db 75
    
    linehorizontalpole_x db 2
    linehorizontalpole_y db 74
    
    lineverticalpole_x db 2
    lineverticalpole_y db 63
    
    gameover db 0AH,0DH," "
             db 0AH,0DH," "
             db 0AH,0DH," "
             db 0AH,0DH," "
             db 0AH,0DH," "
             db 0AH,0DH,"    _____                         ____                  "
         	 db 0AH,0DH,"   / ____|                       / __ \                 "
        	 db 0AH,0DH,"  | |  __  __ _ _ __ ___   ___  | |  | |__   _____ _ __ "
        	 db 0AH,0DH,"  | | |_ |/ _` | '_ ` _ \ / _ \ | |  | |\ \ / / _ \ '__|"
        	 db 0AH,0DH,"  | |__| | (_| | | | | | |  __/ | |__| | \ V /  __/ |   "
        	 db 0AH,0DH,"   \_____|\__,_|_| |_| |_|\___|  \____/   \_/ \___|_|   "
		     db 0AH,0DH,"========================================================="
		     db 0AH,0DH,"                                           "
		     db 0AH,0DH,"                THANK YOU FOR PLAYING! :D  $" 
               
        
        
.CODE

main proc
        MOV AX,@DATA
        MOV DS,AX
                                 
        
 MENU:  MOV AX,0003
        INT 10H
        
        lea dx,HANGMAN              ;FOR DISPLAYING THE HANGMAN
        mov ah,09h
        int 21h
	
                      
        mov ah,02
        mov bh,00
        mov dh,12
        mov dl,30
        int 10h

        MOV AH,09
        LEA DX,CHOICES                               ;MENU
        INT 21H

        MOV AH,01
        INT 21H

        MOV BL,AL

        CMP BL,'A'
        JE START

        CMP BL,'B'
        JE HELP

        CMP BL,'C'
        JE ABOUT

        CMP BL,'D'
        JE NO
        
        mov dl, 13D
        mov ah, 2h
        int 21h

        mov dl, 10D
        mov ah, 2h
        int 21h 

     ASD:
        JMP MENU
  

     START:	
	                           ;START DISPALY THE QUESTION NUMBER 1
        MOV AX,0003
        INT 10H  
        
        mov score,00
        
        lea dx,HANGMAN              ;FOR DISPLAYING THE HANGMAN
        mov ah,09h
        int 21h
	     
        mov dl, 13D
        mov ah, 2h
        int 21h

        mov dl, 10D
        mov ah, 2h
        int 21h 
        
        lea dx,mode
        mov ah,09h
        int 21h
	
        MOV AH,01
        INT 21H

        CMP AL,'7'
        JE EASY
        CMP AL,'8'
        JE MEDIUM
        CMP AL,'9'
        JE HARD
   	
        MOV AX,0003
        INT 10H
        
EASY:       
        
        MOV AX,0003
        INT 10H
        
        mov wrong,00
        
        LEA DX,QUESTION1_EASY
        MOV AH,09H
        INT 21H
        
        MOV AH,01
        INT 21H
        
        CMP AL,'1'
        JE TAMA1
        CMP AL,'2'
        JE MALI1
        CMP AL,'3'
        JE MALI1
        JMP OVER
        
        
        
TAMA1:                                          ;DISPLAY CORRECT 1 IF THE ANSWER IN QUESTION NUMBER IS IS CORRECT
        
        
        INC SCORE
        
        JMP Q2                                 ;JUMP TO QUESTION NUMBER 2
        	        
        
MALI1:                                      ;DISPALY GAME OVER IF THE ANSWER IN QUESTION NUMBER 1 IS WRONG
        INC WRONG
        
        JMP Q2
        
	                               ;JUMP OVER
        
        
 q2:    
        
        MOV AX,0003
        INT 10H
        
        call drawhangman  
      
	    LEA DX,QUESTION2_EASY                       ;DISPLAY THE QUESTION NUMBER 2 IF THE ANSWER IN QUESTION NUMBER 1 IS CORRECT
        MOV AH,09H
        INT 21H
        
        MOV AH,01
        INT 21H
        
        CMP AL,'1'
        JE MALI2
        CMP AL,'2'
        JE TAMA2
        CMP AL,'3'
        JE MALI2
        JMP OVER
        
TAMA2:                                        ;DISPLAY CORRECT 2 IF THE ANSWER IN QUESTION 2 IS CORRECT
        
        INC SCORE
                
        
        JMP Q3
	
        
MALI2:  
        INC WRONG  
        
        JMP Q3
       
        
        
q3:    
        mov ax,0003
        int 10h
	    
	    call drawhangman
	    
	    LEA DX,QUESTION3_EASY                             ;DISPLAY QUESTION NUMBER 3
        MOV AH,09H
        INT 21H
        
        MOV AH,01
        INT 21H
        
        CMP AL,'1'
        JE MALI3
        CMP AL,'2'
        JE MALI3
        CMP AL,'3'
        JE TAMA3
        JMP OVER

TAMA3:                                                     ;DISPLAY IF THE QUESTION 3 IS CORRECT
    
        INC SCORE

        
        JMP Q4 
		
        
MALI3:                                                      ;DISPLAY IF THE QUESTION 3 IS WRONG
       INC WRONG
       
       JMP Q4
   
        
q4:     
        
        MOV AX,0003
        INT 10H
        
        call drawhangman
	    
	    LEA DX,QUESTION4_EASY                                    ;DISPLAY QUESTION 4
        MOV AH,09H
        INT 21H
        
        MOV AH,01
        INT 21H
          
        CMP AL,'1'
        JE TAMA4
        CMP AL,'2'
        JE MALI4
        CMP AL,'3'
        JE MALI4
        JMP OVER
                
        mov dl, 13D
        mov ah, 2h
        int 21h

        mov dl, 10D
        mov ah, 2h
        int 21h 
        
        
        
TAMA4:
     
        INC SCORE
        
        JMP Q5
        
     
        
MALI4:  
                
       INC WRONG 
       
       JMP Q5
       
       
        
q5:      
        
        MOV AX,0003
        INT 10H
        
        call drawhangman
	    
	    LEA DX,QUESTION5_EASY                           ;DISPLAY QUESTION 5
        MOV AH,09H
        INT 21H  
        
        MOV AH,01
        INT 21H
        
        CMP AL,'1'
        JE MALI5
        CMP AL,'2'
        JE MALI5
        CMP AL,'3'
        JE TAMA5
        JMP OVER      

TAMA5:  

        INC SCORE 
        
        jmp yey

	
        
MALI5:                                       ;DISPLAY IF THE Q5 IS WRONG

        INC WRONG
        
        call drawhangman
        
        JMP YEY

MEDIUM:
	     
	    
	    MOV AX,0003
        INT 10H
	    
	    mov wrong,00
	    
	    LEA DX,QUESTION1_MEDIUM
	    MOV AH,09H
	    INT 21H
	
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'1'
	    JE MTAMA1
	    CMP AL,'2'
	    JE MMALI1
	    CMP AL,'3'
	    JE MMALI1
	    JNE EXIT

MTAMA1:

        
        INC SCORE
    
	
	    JMP QM2
	
MMALI1:  

       
	    
	    jmp qm2 

QM2: 
        
        
        MOV AX,0003
        INT 10H
     
        call drawhangman
	    
	    LEA DX,QUESTION2_MEDIUM
	    MOV AH,09H
	    INT 21H
	
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'2'
	    JE MTAMA2
	    CMP AL,'1'
	    JE MMALI2
	    CMP AL,'3'
	    JE MMALI2
	    JMP EXIT

MTAMA2:  

 
        INC SCORE

	
	    JMP QM3

MMALI2: 

        inc wrong

	    JMP QM3

QM3:
       
        
        MOV AX,0003
        INT 10H
        
        call drawhangman   
	    
	    LEA DX,QUESTION3_MEDIUM
	    MOV AH,09H
	    INT 21H
	
	    MOV AH,01
	    INT 21H

	    CMP AL,'1'
	    JMP MTAMA3
	    CMP AL,'2'
	    JE MMALI3
	    CMP AL,'3'
	    JE MMALI3
	    JNE EXIT

MTAMA3:
        
 
        
        INC SCORE
  
	    JMP QM4

MMALI3: 
        
        inc wrong
      
	    JMP QM4
	
QM4: 
        
        
        MOV AX,0003
        INT 10H
        
        call drawhangman
	    
	    LEA DX,QUESTION4_MEDIUM
	    MOV AH,09H
	    INT 21H
	
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'1'
	    JE MTAMA4
	    CMP AL,'2'
	    JE MMALI4
	    CMP AL,'3'
	    JE MMALI4
	    JNE EXIT

MTAMA4: 
        
 
        INC SCORE

	    JMP QM5

MMALI4:

        inc wrong

	    JMP QM5
	
QM5:
        
        MOV AX,0003
        INT 10H
        
	    call drawhangman
	    
	    LEA DX,QUESTION5_MEDIUM
	    MOV AH,09H
	    INT 21H
	
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'3'
	    JE MTAMA5
	    CMP AL,'1'
	    JE MMALI5
	    CMP AL,'2'
	    JE MMALI5
	    JNE EXIT
	
MTAMA5:
        

        INC SCORE 
        
	    jmp yey

	
MMALI5:
        
        inc wrong

        call drawhangman 
        
        JMP YEY

HARD:
	    
	    MOV AX,0003
        INT 10H
	    
	    mov wrong,00
	    
	    LEA DX,QUESTION1_HARD
	    MOV AH,09H
	    INT 21H
	    
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'1'
	    JE HTAMA1
	    CMP AL,'2'
	    JE HMALI1
	    CMP AL,'3'
	    JE HMALI1
	    JNE EXIT

HTAMA1: 

        
        INC SCORE
	   
	
	    JMP QH2
	
HMALI1: 
        
       inc wrong
       
	
	    JMP QH2


QH2:
        
        MOV AX,0003
        INT 10H
     
        call drawhangman   
	    
	    LEA DX,QUESTION2_HARD
	    MOV AH,09H
	    INT 21H
	
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'2'
	    JE HTAMA2
	    CMP AL,'1'
	    JE HMALI2
	    CMP AL,'3'
	    JE HMALI2
	    JNE EXIT

HTAMA2:  

        INC SCORE
	    
	
	    JMP QH3
	
HMALI2:
        
        inc wrong
	
	    JMP QH3


QH3:	
    
        MOV AX,0003
        INT 10H
        
	    call drawhangman
	    
	    LEA DX,QUESTION3_HARD
	    MOV AH,09H
	    INT 21H
	
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'2'
	    JE HTAMA3
	    CMP AL,'1'
	    JE HMALI3
	    CMP AL,'3'
	    JE HMALI3
	    JNE EXIT

HTAMA3: 
        
     
        
        INC SCORE 
	
    	
	    JMP QH4
    	
HMALI3:
    

    	inc wrong
	
	    JMP QH4

QH4:    
        
        MOV AX,0003
        INT 10H
        
        call drawhangman
	    
	    LEA DX,QUESTION4_HARD
	    MOV AH,09H
	    INT 21H
	    
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'3'
	    JE HTAMA4
	    CMP AL,'2'
	    JE HMALI4
	    CMP AL,'1'
	    JE HMALI4
	    JNE EXIT

HTAMA4: 
     
        INC SCORE 
	
	    JMP QH5
	
HMALI4: 
        inc wrong

	    JMP QH5

QH5:    
        
        MOV AX,0003
        INT 10H
        
	    call drawhangman
	    
	    LEA DX,QUESTION5_HARD
	    MOV AH,09H
	    INT 21H
	    
	    MOV AH,01
	    INT 21H
	
	    CMP AL,'1'
	    JE HTAMA5
	    CMP AL,'2'
	    JE HMALI5
	    CMP AL,'3'
	    JE HMALI5
	    JNE EXIT

HTAMA5: 

        
        INC SCORE

	    jmp yey
	
HMALI5: 

        inc wrong
        
        call drawhangman
	
        JMP YEY

  OVER: 
       
	    	     
        LEA DX,CONTINUE
        MOV AH,09H
        INT 21H
        
        MOV AH,01
        INT 21H
        
        CMP AL,'Y'
	    JE YES
        CMP AL,'N'
        JE NO         
        JMP EXIT

  YEY:	
  
        MOV AX,0003
        INT 10H
        
        
        MOV AH,09H
        LEA DX,XX
        INT 21H
         
	       
	    MOV AH,02
	    ADD SCORE,30H
	    MOV DL,SCORE
	    INT 21h
	    
	    MOV AH,09H
        LEA DX,TRY
        INT 21H
        
	      

        MOV AH,01
        INT 21H
	
	    MOV BL,AL
        
        
        CMP BL,'Y'
        JE YES
        CMP BL,'N'
        JE NO
        
                 
        JMP EXIT
	


YES:
	    MOV AX,0003
        INT 10H

 	    lea dx,HANGMAN              ;FOR DISPLAYING THE HANGMAN
        mov ah,09h
        int 21h 

        JMP START     
     
NO:
	    MOV AX,0003
        INT 10H

	    lea dx,gameover            ;For displaying game over
        mov ah,09h
        int 21h    
            
            
        mov cx, 5fh         ; PAUSE AFTER THE MESSAGE, GAMEOVER, IS DISPLAYED. (BEFORE RETURNING CONTROL TO DOS)
        mov dx, 4240h   
        mov ah, 86h
        int 15h    
	
        JMP EXIT
        
       
        
                                    
HELP:
                
        mov dl, 13D
        mov ah, 2h                   ;DISPLAY THE INSTRUCTION OF THE GAME
        int 21h

        mov dl, 10D
        mov ah, 2h
        int 21h
     
        MOV AH,09
        LEA DX,INSTRUCT
        INT 21H 
                
        mov dl, 13D
        mov ah, 2h
        int 21h

        mov dl, 10D
        mov ah, 2h
        int 21h

        MOV AH,09
        LEA DX,MSG
        INT 21H

        MOV AH,01
        INT 21H

        CMP AL,'Z'
        JE ASD

ABOUT:
                
        mov dl, 13D                        ;DISPALY THE NAME OF THE DEVELOPER
        mov ah, 2h
        int 21h

        mov dl, 10D
        mov ah, 2h
        int 21h
     
        MOV AH,09
        LEA DX,CREDIT
        INT 21H

        MOV AH,09
        LEA DX,MSG
        INT 21H

        MOV AH,01
        INT 21H

        CMP AL,'Z'
        JE ASD


    
            
        
;************************************************************ 





EXIT:                                      ;EXIT

        MOV AH,4CH
        INT 21H 
        
main endp 

;******************************************************************
drawhangman proc

cmp wrong,0
je do_nothing
cmp wrong,1
je head
cmp wrong,2
je head_body
cmp wrong,3
je head_body_arms
cmp wrong,4
je head_body_arms_legs
cmp wrong,5
je wholehangman

do_nothing:
ret

head: 
    
    mov head1_x, 5
    mov head1_y, 60
    
    mov head2_x, 9
    mov head2_y, 61
    
    mov head3_x, 8
    mov head3_y, 67
    
    mov head4_x, 4
    mov head4_y, 66 
    
    mov mouth_x, 8
    mov mouth_y, 62 
    
    mov body_x, 10
    mov body_y, 64
    
    mov hand1_x, 11
    mov hand1_y, 59
    
    mov hand2_x, 11
    mov hand2_y, 65
    
    mov legs1_x, 16
    mov legs1_y, 63
    
    mov legs2_x, 16
    mov legs2_y, 65
    
    mov floor_x, 22 
    mov floor_y, 56
    
    mov pole_x, 21 
    mov pole_y, 75
    
    mov linehorizontalpole_x, 2
    mov linehorizontalpole_y, 74
    
    mov lineverticalpole_x, 2
    mov lineverticalpole_y, 63
     
    MOV CX,0003
    INT 10H 
 
     mov cx,4
   Dhead1: 
    mov ah, 2
    mov bh, 00
    mov dh, head1_x
    mov dl, head1_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc head1_x
    loop Dhead1
    
    ;print 192
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,192
    int 21h
    
    mov cx,6
    Dhead2: 
    mov ah, 2
    mov bh, 00
    mov dh, head2_x
    mov dl, head2_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc head2_y
    loop Dhead2
    
    ;print 217
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,217
    int 21h 
    
    mov cx,4
    Dhead3: 
    mov ah, 2
    mov bh, 00
    mov dh, head3_x
    mov dl, head3_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    dec head3_x
    loop Dhead3
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,191
    int 21h 
    
    mov cx,6
    Dhead4: 
    mov ah, 2
    mov bh, 00
    mov dh, head4_x
    mov dl, head4_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    dec head4_y
    loop Dhead4
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,218
    int 21h 
    
    ;print eyes
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,62
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,65
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov cx,4
    Dmouth: 
    mov ah, 2
    mov bh, 00
    mov dh, mouth_x
    mov dl, mouth_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc mouth_y
    loop Dmouth
    
     ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,007
    int 21h 

 
ret

head_body:
    
    MOV AX,0003
    INT 10H
    
    mov head1_x, 5
    mov head1_y, 60
    
    mov head2_x, 9
    mov head2_y, 61
    
    mov head3_x, 8
    mov head3_y, 67
    
    mov head4_x, 4
    mov head4_y, 66 
    
    mov mouth_x, 8
    mov mouth_y, 62 
    
    mov body_x, 10
    mov body_y, 64
    
    mov hand1_x, 11
    mov hand1_y, 59
    
    mov hand2_x, 11
    mov hand2_y, 65
    
    mov legs1_x, 16
    mov legs1_y, 63
    
    mov legs2_x, 16
    mov legs2_y, 65
    
    mov floor_x, 22 
    mov floor_y, 56
    
    mov pole_x, 21 
    mov pole_y, 75
    
    mov linehorizontalpole_x, 2
    mov linehorizontalpole_y, 74
    
    mov lineverticalpole_x, 2
    mov lineverticalpole_y, 63

    mov cx,4
   Ahead1: 
    mov ah, 2
    mov bh, 00
    mov dh, head1_x
    mov dl, head1_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc head1_x
    loop Ahead1
    
    ;print 192
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,192
    int 21h
    
    mov cx,6
    Ahead2: 
    mov ah, 2
    mov bh, 00
    mov dh, head2_x
    mov dl, head2_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc head2_y
    loop Ahead2
    
    ;print 217
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,217
    int 21h 
    
    mov cx,4
    Ahead3: 
    mov ah, 2
    mov bh, 00
    mov dh, head3_x
    mov dl, head3_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    dec head3_x
    loop Ahead3
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,191
    int 21h 
    
    mov cx,6
    Ahead4: 
    mov ah, 2
    mov bh, 00
    mov dh, head4_x
    mov dl, head4_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    dec head4_y
    loop Ahead4
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,218
    int 21h 
    
    ;print eyes
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,62
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,65
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov cx,4
    Amouth: 
    mov ah, 2
    mov bh, 00
    mov dh, mouth_x
    mov dl, mouth_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc mouth_y
    loop Amouth
    
    ;print 194
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,64
    int 10h
    
    mov ah,02
    mov dl,194
    int 21h
    
    mov cx,4
    Abody4: 
    mov ah, 2
    mov bh, 00
    mov dh, body_x
    mov dl, body_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc body_x
    loop Abody4
    
     ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,007
    int 21h  


ret

head_body_arms:

    MOV AX,0003
    INT 10H

    mov head1_x, 5
    mov head1_y, 60
    
    mov head2_x, 9
    mov head2_y, 61
    
    mov head3_x, 8
    mov head3_y, 67
    
    mov head4_x, 4
    mov head4_y, 66 
    
    mov mouth_x, 8
    mov mouth_y, 62 
    
    mov body_x, 10
    mov body_y, 64
    
    mov hand1_x, 11
    mov hand1_y, 59
    
    mov hand2_x, 11
    mov hand2_y, 65
    
    mov legs1_x, 16
    mov legs1_y, 63
    
    mov legs2_x, 16
    mov legs2_y, 65
    
    mov floor_x, 22 
    mov floor_y, 56
    
    mov pole_x, 21 
    mov pole_y, 75
    
    mov linehorizontalpole_x, 2
    mov linehorizontalpole_y, 74
    
    mov lineverticalpole_x, 2
    mov lineverticalpole_y, 63

    mov cx,4
   Bhead1: 
    mov ah, 2
    mov bh, 00
    mov dh, head1_x
    mov dl, head1_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc head1_x
    loop Bhead1
    
    ;print 192
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,192
    int 21h
    
    mov cx,6
   Bhead2: 
    mov ah, 2
    mov bh, 00
    mov dh, head2_x
    mov dl, head2_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc head2_y
    loop Bhead2
    
    ;print 217
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,217
    int 21h 
    
    mov cx,4
    Bhead3: 
    mov ah, 2
    mov bh, 00
    mov dh, head3_x
    mov dl, head3_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    dec head3_x
    loop Bhead3
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,191
    int 21h 
    
    mov cx,6
    Bhead4: 
    mov ah, 2
    mov bh, 00
    mov dh, head4_x
    mov dl, head4_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    dec head4_y
    loop Bhead4
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,218
    int 21h 
    
    ;print eyes
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,62
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,65
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov cx,4
    Bmouth: 
    mov ah, 2
    mov bh, 00
    mov dh, mouth_x
    mov dl, mouth_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc mouth_y
    loop Bmouth
    
    ;print 194
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,64
    int 10h
    
    mov ah,02
    mov dl,194
    int 21h
    
    mov cx,6
    Bbody4: 
    mov ah, 2
    mov bh, 00
    mov dh, body_x
    mov dl, body_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc body_x
    loop Bbody4
     
    
    mov cx,5
    Bhand1: 
    mov ah, 2
    mov bh, 00
    mov dh, hand1_x
    mov dl, hand1_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc hand1_y
    loop Bhand1
    
    ;print 197
    mov ah,02
    mov bh,0
    mov dh,11
    mov dl,64
    int 10h
    
    mov ah,02
    mov dl,197
    int 21h
    
    mov cx,5
    Bhand2: 
    mov ah, 2
    mov bh, 00
    mov dh, hand2_x
    mov dl, hand2_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc hand2_y
    loop Bhand2
    
     ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,007
    int 21h 


ret

head_body_arms_legs:
    
        mov head1_x, 5
        mov head1_y, 60
        
        mov head2_x, 9
        mov head2_y, 61
        
        mov head3_x, 8
        mov head3_y, 67
        
        mov head4_x, 4
        mov head4_y, 66 
        
        mov mouth_x, 8
        mov mouth_y, 62 
        
        mov body_x, 10
        mov body_y, 64
        
        mov hand1_x, 11
        mov hand1_y, 59
        
        mov hand2_x, 11
        mov hand2_y, 65
        
        mov legs1_x, 16
        mov legs1_y, 63
        
        mov legs2_x, 16
        mov legs2_y, 65
        
        mov floor_x, 22 
        mov floor_y, 56
        
        mov pole_x, 21 
        mov pole_y, 75
        
        mov linehorizontalpole_x, 2
        mov linehorizontalpole_y, 74
        
        mov lineverticalpole_x, 2
        mov lineverticalpole_y, 63

    MOV AX,0003
    INT 10H
    
    mov cx,4
   Chead1: 
    mov ah, 2
    mov bh, 00
    mov dh, head1_x
    mov dl, head1_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc head1_x
    loop Chead1
    
    ;print 192
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,192
    int 21h
    
    mov cx,6
    Chead2: 
    mov ah, 2
    mov bh, 00
    mov dh, head2_x
    mov dl, head2_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc head2_y
    loop Chead2
    
    ;print 217
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,217
    int 21h 
    
    mov cx,4
    Chead3: 
    mov ah, 2
    mov bh, 00
    mov dh, head3_x
    mov dl, head3_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    dec head3_x
    loop Chead3
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,191
    int 21h 
    
    mov cx,6
    Chead4: 
    mov ah, 2
    mov bh, 00
    mov dh, head4_x
    mov dl, head4_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    dec head4_y
    loop Chead4
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,218
    int 21h 
    
    ;print eyes
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,62
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,65
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov cx,4
    Cmouth: 
    mov ah, 2
    mov bh, 00
    mov dh, mouth_x
    mov dl, mouth_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc mouth_y
    loop Cmouth
         
    ;print 194
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,64
    int 10h
    
    mov ah,02
    mov dl,194
    int 21h
    
    mov cx,6
    Cbody4: 
    mov ah, 2
    mov bh, 00
    mov dh, body_x
    mov dl, body_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc body_x
    loop Cbody4
     
    
    mov cx,5
    Chand1: 
    mov ah, 2
    mov bh, 00
    mov dh, hand1_x
    mov dl, hand1_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc hand1_y
    loop Chand1
    
    ;print 197
    mov ah,02
    mov bh,0
    mov dh,11
    mov dl,64
    int 10h
    
    mov ah,02
    mov dl,197
    int 21h
    
    mov cx,5
    Chand2: 
    mov ah, 2
    mov bh, 00
    mov dh, hand2_x
    mov dl, hand2_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc hand2_y
    loop Chand2 
    
    
    mov cx,5
   Clegs1: 
    mov ah, 2
    mov bh, 00
    mov dh, legs1_x
    mov dl, legs1_y
    int 10h
    
    mov ah, 2
    mov dl, 47
    int 21h

    inc legs1_x
    dec legs1_y
    loop Clegs1
    
    mov cx,5
   Clegs2: 
    mov ah, 2
    mov bh, 00
    mov dh, legs2_x
    mov dl, legs2_y
    int 10h
    
    mov ah, 2
    mov dl, 92
    int 21h

    inc legs2_x
    inc legs2_y
    loop Clegs2 
    
     ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,007
    int 21h 


ret


wholehangman:
    
    mov head1_x, 5
    mov head1_y, 60
    
    mov head2_x, 9
    mov head2_y, 61
    
    mov head3_x, 8
    mov head3_y, 67
    
    mov head4_x, 4
    mov head4_y, 66 
    
    mov mouth_x, 8
    mov mouth_y, 62 
    
    mov body_x, 10
    mov body_y, 64
    
    mov hand1_x, 11
    mov hand1_y, 59
    
    mov hand2_x, 11
    mov hand2_y, 65
    
    mov legs1_x, 16
    mov legs1_y, 63
    
    mov legs2_x, 16
    mov legs2_y, 65
    
    mov floor_x, 22 
    mov floor_y, 56
    
    mov pole_x, 21 
    mov pole_y, 75
    
    mov linehorizontalpole_x, 2
    mov linehorizontalpole_y, 74
    
    mov lineverticalpole_x, 2
    mov lineverticalpole_y, 63 
    
    MOV AX,0003
    INT 10H
    
    
    mov ah,09h
    lea dx, gameover
    int 21h
    
    mov cx,4
   head1: 
    mov ah, 2
    mov bh, 00
    mov dh, head1_x
    mov dl, head1_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc head1_x
    loop head1
    
    ;print 192
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,192
    int 21h
    
    mov cx,6
    head2: 
    mov ah, 2
    mov bh, 00
    mov dh, head2_x
    mov dl, head2_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc head2_y
    loop head2
    
    ;print 217
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,217
    int 21h 
    
    mov cx,4
    head3: 
    mov ah, 2
    mov bh, 00
    mov dh, head3_x
    mov dl, head3_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    dec head3_x
    loop head3
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,67
    int 10h
    
    mov ah,02
    mov dl,191
    int 21h 
    
    mov cx,6
    head4: 
    mov ah, 2
    mov bh, 00
    mov dh, head4_x
    mov dl, head4_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    dec head4_y
    loop head4
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,4
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,218
    int 21h 
    
    ;print eyes
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,62
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov ah,02
    mov bh,0
    mov dh,6
    mov dl,65
    int 10h
    
    mov ah,02
    mov dl,88
    int 21h
    
    mov cx,4
    mouth: 
    mov ah, 2
    mov bh, 00
    mov dh, mouth_x
    mov dl, mouth_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc mouth_y
    loop mouth
    
    ;print 194
    mov ah,02
    mov bh,0
    mov dh,9
    mov dl,64
    int 10h
    
    mov ah,02
    mov dl,194
    int 21h
    
    mov cx,6
    body4: 
    mov ah, 2
    mov bh, 00
    mov dh, body_x
    mov dl, body_y
    int 10h
    
    mov ah, 2
    mov dl, 179
    int 21h

    inc body_x
    loop body4
     
    
    mov cx,5
    hand1: 
    mov ah, 2
    mov bh, 00
    mov dh, hand1_x
    mov dl, hand1_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc hand1_y
    loop hand1
    
    ;print 197
    mov ah,02
    mov bh,0
    mov dh,11
    mov dl,64
    int 10h
    
    mov ah,02
    mov dl,197
    int 21h
    
    mov cx,5
    hand2: 
    mov ah, 2
    mov bh, 00
    mov dh, hand2_x
    mov dl, hand2_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc hand2_y
    loop hand2 
    
    
    mov cx,5
   legs1: 
    mov ah, 2
    mov bh, 00
    mov dh, legs1_x
    mov dl, legs1_y
    int 10h
    
    mov ah, 2
    mov dl, 47
    int 21h

    inc legs1_x
    dec legs1_y
    loop legs1
    
    mov cx,5
   legs2: 
    mov ah, 2
    mov bh, 00
    mov dh, legs2_x
    mov dl, legs2_y
    int 10h
    
    mov ah, 2
    mov dl, 92
    int 21h

    inc legs2_x
    inc legs2_y
    loop legs2 
    
    ;print 179
    mov ah,02
    mov bh,0
    mov dh,23
    mov dl,55
    int 10h
    
    mov ah,02
    mov dl,179
    int 21h
    
    ;print 218
    mov ah,02
    mov bh,0
    mov dh,22
    mov dl,55
    int 10h
    
    mov ah,02
    mov dl,218
    int 21h
    
    mov cx,23
    floor: 
    mov ah, 2
    mov bh, 00
    mov dh, floor_x
    mov dl, floor_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    inc floor_y
    loop floor 
    
    mov cx,19
    pole: 
    mov ah, 2
    mov bh, 00
    mov dh, pole_x
    mov dl, pole_y
    int 10h
    
    mov ah, 2
    mov dl, 186
    int 21h

    dec pole_x
    loop pole
    
    ;print 208
    mov ah,02
    mov bh,0
    mov dh,21
    mov dl,75
    int 10h
    
    mov ah,02
    mov dl,178
    int 21h
    
    ;print 208
    mov ah,02
    mov bh,0
    mov dh,21
    mov dl,74
    int 10h
    
    mov ah,02
    mov dl,178
    int 21h 
    
    ;print 208
    mov ah,02
    mov bh,0
    mov dh,21
    mov dl,76
    int 10h
    
    mov ah,02
    mov dl,178
    int 21h 
    
    ;print 208
    mov ah,02
    mov bh,0
    mov dh,20
    mov dl,75
    int 10h
    
    mov ah,02
    mov dl,178
    int 21h
    
    ;print 218
    mov ah,02
    mov bh,0
    mov dh,2
    mov dl,75
    int 10h
    
    mov ah,02
    mov dl,183
    int 21h
    
    mov cx,11
    linehorizontalpole: 
    mov ah, 2
    mov bh, 00
    mov dh, linehorizontalpole_x
    mov dl, linehorizontalpole_y
    int 10h
    
    mov ah, 2
    mov dl, 196
    int 21h

    dec linehorizontalpole_y
    loop linehorizontalpole 
    
    ;print 218
    mov ah,02
    mov bh,0
    mov dh,2
    mov dl,63
    int 10h
    
    mov ah,02
    mov dl,218
    int 21h
    
    ;print 218
    mov ah,02
    mov bh,0
    mov dh,3
    mov dl,63                     
    int 10h
    
    mov ah,02
    mov dl,179
    int 21h 
    
    ;print 191
    mov ah,02
    mov bh,0
    mov dh,1
    mov dl,60
    int 10h
    
    mov ah,02
    mov dl,007
    int 21h 
    
    jmp exit
    
    RET
    
drawhangman endp


       
        
END