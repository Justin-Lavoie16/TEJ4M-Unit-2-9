@ ARM assembly with else clause first
.text
.global main
main:
    mov r0, #42       @ Test value
if_eval:
    cmp r0, #0
    bne then_part     @ Jump to then if condition true
else_part:
    mov r1, #2        @ Else code: r1 = 2
    b end_of_if
then_part:
    mov r1, #1        @ Then code: r1 = 1
end_of_if:
    mov r0, r1        @ Return result
    bx lr
