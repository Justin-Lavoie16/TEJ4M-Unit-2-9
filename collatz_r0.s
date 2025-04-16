@ Modified to use r0 for count
.text
.global main
main:
    mov r1, #123      @ Start value
    mov r0, #0        @ Use r0 directly
loop:
    cmp r1, #1
    beq end
    tst r1, #1
    beq even
odd:
    add r1, r1, r1, lsl #1
    add r1, #1
    b end_loop
even:
    mov r1, r1, lsr #1
end_loop:
    add r0, #1        @ Increment directly in r0
    b loop
end:
    bx lr
