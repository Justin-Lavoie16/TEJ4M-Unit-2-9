.text
.global main
main:
    mov r1, #999999   @ Large starting number
    mov r2, #0        @ Step counter
loop:
    cmp r1, #1
    beq end
    tst r1, #1        @ Test LSB
    beq even
odd:
    add r1, r1, r1, lsl #1  @ 3n
    add r1, #1               @ +1
    b end_loop
even:
    mov r1, r1, lsr #1 @ n/2
end_loop:
    add r2, #1
    b loop
end:
    mov r0, r2
    bx lr
