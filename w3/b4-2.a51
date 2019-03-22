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

    MOV     SP,     #60H
    PUSH    30H
    PUSH    31H
    PUSH    32H
    PUSH    33H
    PUSH    34H
    PUSH    35H
    PUSH    36H
    PUSH    37H
    POP     40H
    POP     41H
    POP     42H
    POP     43H
    POP     44H
    POP     45H
    POP     46H
    POP     47H
END
