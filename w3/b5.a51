ORG 0
    MOV     30H,    #23H
    MOV     31H,    #24H
    MOV     32H,    #25H
    MOV     33H,    #26H
    MOV     34H,    #27H
    MOV     35H,    #28H
    MOV     36H,    #29H
    MOV     37H,    #2aH
    MOV     38H,    #2bH
    MOV     39H,    #2cH
    MOV     3aH,    #2dH
    MOV     3bH,    #2eH
    MOV     3cH,    #2fH
    MOV     3dH,    #30H
    MOV     3eH,    #31H
    MOV     3fH,    #32H
    MOV     40H,    #33H
    MOV     41H,    #34H
    MOV     42H,    #35H
    MOV     43H,    #36H
    MOV     44H,    #37H
    MOV     45H,    #38H
    MOV     46H,    #39H
    MOV     47H,    #3aH
    MOV     48H,    #3bH
    MOV     49H,    #3cH
    MOV     4aH,    #3dH
    MOV     4bH,    #3eH
    MOV     4cH,    #3fH
    MOV     4dH,    #40H
    MOV     4eH,    #41H
    MOV     4fH,    #42H

    ; starts here
    MOV     R0,     #30H
    MOV     R1,     #4fH
    MOV     R3,     #10H

next:
    MOV     A,      @R0
    MOV     B,      @R1
    MOV     @R0,    B
    MOV     @R1,    A
    INC     R0
    DEC     R1
    DJNZ    R3,     next
END
