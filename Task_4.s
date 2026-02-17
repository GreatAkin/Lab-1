.section .bss
.global ram
.lcomm ram, 256

.section .text
.global compute_sum

compute_sum:
    # Compute 1+2+...+10 and store result at RAM[50H]

    mov $1, %rax           # current number
    mov $10, %rbx          # N = 10
    xor %rcx, %rcx         # sum = 0

sum_loop:
    add %rax, %rcx
    inc %rax
    dec %rbx
    jnz sum_loop

    movb %cl, ram+0x50     # store lower byte of sum

    ret

.section .note.GNU-stack,"",@progbits
