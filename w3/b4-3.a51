ORG 0
    ; Set init value
    MOV     30H,    #07H
    MOV     31H,    #16H
    MOV     32H,    #02H
    MOV     33H,    #30H
    MOV     34H,    #07H
    MOV     35H,    #16H
    MOV     36H,    #04H
    MOV     37H,    #30H

    ; Starts
    MOV     SP,     #60H
    MOV     R0,     #30H
    MOV     R1,     #40H
    MOV     R3,     #8

next1:
    MOV     A,      @R0
    PUSH    A
    INC     R0
    DJNZ    R3,     next1

    MOV     R3,     #8

next2:
    POP     A
    MOV     @R1,    A
    INC     R1
    DJNZ    R3,     next2
END
