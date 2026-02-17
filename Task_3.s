.section .bss
.global ram
.lcomm ram, 256

.section .text
.global clear_ram

clear_ram:
    # Clear RAM locations 50H – 58H (store 00h)

    mov $0x50, %rcx
    mov $9, %rdx

loop_clear:
    movb $0x00, ram(%rcx)
    inc %rcx
    dec %rdx
    jnz loop_clear

    ret

.section .note.GNU-stack,"",@progbits
