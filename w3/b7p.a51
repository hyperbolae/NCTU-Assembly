ORG 0

; init value setting
MOV 30h, #07h
MOV 31h, #16h
MOV 32h, #02h
MOV 33h, #30h
MOV 34h, #94h
MOV 35h, #87h
MOV 36h, #08h ; removed
MOV 37h, #87h ; removed
MOV 38h, #01h
MOV 39h, #23h
MOV 3ah, #45h
MOV 3bh, #67h
MOV 3ch, #89h
MOV 3dh, #0abh
MOV 3eh, #0cdh ; removed
MOV 3fh, #0efh ; removed
MOV 40h, #20h
MOV 41h, #00h
MOV 42h, #07h
MOV 43h, #31h
MOV 44h, #19h
MOV 45h, #49h
MOV 46h, #10h ; removed
MOV 47h, #01h ; removed

; starts here
MOV 20h, #30h
MOV 21h, #30h
MOV 22h, #50h
MOV R3,  #3

sam:
    MOV R4,  #6

next:
    MOV R0, 20h
    MOV A,  @R0
    MOV R0, 21h
    MOV @R0, A
    INC 20h
    INC 21h
    DJNZ R4, next

    MOV R0, 20h
    MOV A,  @R0
    MOV R0, 22h
    MOV @R0, A
    INC 20h
    INC 22h
    MOV R0, 20h
    MOV A,  @R0
    MOV R0, 22h
    MOV @R0, A
    INC 20h
    INC 22h
    DJNZ R3, sam
END
    