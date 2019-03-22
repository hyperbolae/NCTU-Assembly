ORG 0
    MOV     R1,     #50H
    MOV     70H,    #30H
    MOV     SP,     #6FH

    MOV     A,      70H
    ADD     A,      #6
    MOV     71H,    A
    MOV     R3,     #3

next4:
    MOV     R0,     70H
    CJNE    A,      70H,     skip3
    MOV     R2,     #2
    
extract:
    MOV     A,      @R0
    MOV     @R1,    A
    INC     R1
    INC     R0
    DJNZ    R2,     extract
    MOV     70H,    R0
    MOV     A,      71H
    ADD     A,      #8
    MOV     71H,    A
    DJNZ    R3,     next4
    JMP     cont
    
skip3:
    MOV     R2,     #6
    
skip:
    INC     70H
    PUSH    A
    DJNZ    R2,     skip
    MOV     A,      71H
    JMP     next4
    
cont:
    MOV     R1,     #3FH
    MOV     R3,     #16
    
restore:
    POP     A
    MOV     @R1,    A
    DEC     R1
    DJNZ    R3,     restore
END
