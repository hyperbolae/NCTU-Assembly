; Init
; Suppose that value1 0716023007310801 is stored at address 40H to 47H
; Suppose that value2 0123456789ABCDEF is stored at address 50H to 57H
; We want to reorder these two values to 60H to 6FH
; Resulting 0701162302453067078931AB08CD01EF is the new value stored

ORG 0

    ; Set original values
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
    MOV     55H,    #0ABH
    MOV     56H,    #0CDH
    MOV     57H,    #0EFH

    ; Our program starts here
    MOV     58H,    #40H
    MOV     59H,    #50H
    MOV     R1,     #60H
    MOV     R3,     #8
next:
    ; Copy a byte of value1
    MOV     R0,     58H
    MOV     A,      @R0
    MOV     @R1,    A
    INC     R1
    ; Copy a byte of value2
    MOV     R0,     59H
    MOV     A,      @R0
    MOV     @R1,    A
    INC     R1
    ; Move a byte
    INC     58H
    INC     59H
    ; Check if this loop should be terminated
    DJNZ    R3,     next
END
