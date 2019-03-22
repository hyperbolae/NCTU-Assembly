ORG 0
    MOV     30H,#0a0H
    MOV     31H,#0a1H
    MOV     32H,#0a2H
    MOV     33H,#0a3H
    MOV     34H,#0a4H
    MOV     35H,#0a5H
    MOV     36H,#0a6H
    MOV     37H,#0a7H
    MOV     38H,#0a8H
    MOV     39H,#0a9H
    MOV     3aH,#0aaH
    MOV     3bH,#0abH
    MOV     3cH,#0acH
    MOV     3dH,#0adH
    MOV     3eH,#0aeH
    MOV     3fH,#0afH
    MOV     40H,#0b0H
    MOV     41H,#0b1H
    MOV     42H,#0b2H
    MOV     43H,#0b3H
    MOV     44H,#0b4H
    MOV     45H,#0b5H
    MOV     46H,#0b6H
    MOV     47H,#0b7H
    MOV     48H,#0b8H
    MOV     49H,#0b9H
    MOV     4aH,#0baH
    MOV     4bH,#0bbH
    MOV     4cH,#0bcH
    MOV     4dH,#0bdH
    MOV     4eH,#0beH
    MOV     4fH,#0bfH
    MOV     50H,#0c0H
    MOV     51H,#0c1H
    MOV     52H,#0c2H
    MOV     53H,#0c3H
    MOV     54H,#0c4H
    MOV     55H,#0c5H
    MOV     56H,#0c6H
    MOV     57H,#0c7H
    MOV     58H,#0c8H
    MOV     59H,#0c9H
    MOV     5aH,#0caH
    MOV     5bH,#0cbH
    MOV     5cH,#0ccH
    MOV     5dH,#0cdH
    MOV     5eH,#0ceH
    MOV     5fH,#0cfH

    ; starts here
    MOV     R0,     #5fH    ;source2
    MOV     R1,     #7fH    ;dest
    MOV     20H,    #3fH    ;source1
    MOV     R3,     #10H

next:
    MOV     A,      @R0
    MOV     @R1,    A
    DEC     R0
    DEC     R1
    MOV     A,      @R0
    MOV     @R1,    A
    DEC     R0
    DEC     R1

    ; swap source 1 and 2
    MOV     21H,    R0
    MOV     R0,     20H
    MOV     R2,     A

    MOV     A,      @R0
    MOV     @R1,    A
    DEC     R0
    DEC     R1

    ; swap source 1 and 2
    MOV     20H,    R0
    MOV     R0,     21H
    MOV     R2,     A

    DJNZ    R3,     next
END
