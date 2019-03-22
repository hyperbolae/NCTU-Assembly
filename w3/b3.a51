ORG 0

    MOV     40H,    #07H
    MOV     41H,    #16H
    MOV     42H,    #02H
    MOV     43H,    #30H
    MOV     44H,    #07H
    MOV     45H,    #31H
    MOV     46H,    #08H
    MOV     47H,    #01H
    MOV     50H,    #01H
    MOV     51H,    #23H
    MOV     52H,    #45H
    MOV     53H,    #67H
    MOV     54H,    #89H
    MOV     55H,    #0ABH   ;       shoulD  ADD     prefix  0
    MOV     56H,    #0CDH   ;       shoulD  ADD     prefix  0
    MOV     57H,    #0EFH   ;       shoulD  ADD     prefix  0

    ; Our program starts
    MOV     30H,    #40H
    MOV     31H,    #50H
    MOV     R1,     #60H
    MOV     R3,     #4
next:
    MOV     R0,     30H
    MOV     A,      @R0
    MOV     @R1,    A
    INC     R1
    INC     R0
    MOV     A,      @R0
    MOV     @R1,    A
    INC     R1
    INC     R0
    MOV     30H,    R0
    MOV     R0,     31H
    MOV     A,      @R0
    MOV     @R1,    A
    INC     R1
    INC     R0
    MOV     A,      @R0
    MOV     @R1,    A
    INC     R1
    INC     R0
    MOV     31H,    R0
    DJNZ    R3,     next
END
