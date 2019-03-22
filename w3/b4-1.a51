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

    ; Our program starts here
    MOV     R0,     #37H
    MOV     R1,     #40H
    MOV     R3,     #8
next:
    MOV     A,      @R0
    MOV     @R1,    A
    DEC     R0
    INC     R1
    DJNZ    R3,     next
END
