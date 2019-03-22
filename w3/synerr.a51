DSEG at 30H
    opnd1:  DS      8
    opnd2:  DS      8
DSEG at 30H
    sum:    DS      8

code_segment: segment CODE at 0000H
; CSEG at 0000h
ORG 0
    MOV     40H,    #opnd1
    MOV     42H,    #sum
    MOV     R1,     #opnd2
    MOV     R3,     #8
    CLR     C

next:
    MOV     R0,     40H
    MOV     A,      @R0
    ADDC    A,      @R1
    INC     40H
    INC     R1
    MOV     R0,     42H
    MOV     @R0,    A
    INC     42H
    DJNZ    R3,     next
END
