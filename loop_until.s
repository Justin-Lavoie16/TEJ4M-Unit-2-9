@ Do-while style loop
.text
.global main
main:
    mov r0, #0        @ Counter
loop_body:
    add r0, r0, #1    @ Increment counter
check:
    cmp r0, #5
    blt loop_body      @ Continue if r0 < 5
end:
    bx lr
