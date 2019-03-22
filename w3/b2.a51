ORG 0
    ; Set init values
    MOV     30H,    #07H
    MOV     31H,    #16H
    MOV     32H,    #02H
    MOV     33H,    #30H
    MOV     34H,    #07H
    MOV     35H,    #31H
    MOV     36H,    #08H
    MOV     37H,    #01H
    MOV     38H,    #01H
    MOV     39H,    #23H
    MOV     3AH,    #45H
    MOV     3BH,    #67H
    MOV     3CH,    #89H
    MOV     3DH,    #0ABH
    MOV     3EH,    #0CDH
    MOV     3FH,    #0EFH

    ; Our program starts here
    MOV     60H,    #40H
    MOV     61H,    #50H
    MOV     R0,     #30H
    MOV     R3,     #8

next:
    MOV     A,      @R0
    MOV     R1,     60H
    MOV     @R1,    A
    INC     R0
    MOV     A,      @R0
    MOV     R1,     61H
    MOV     @R1,    A
    INC     R0
    INC     60H
    INC     61H
    DJNZ    R3,     next
END
