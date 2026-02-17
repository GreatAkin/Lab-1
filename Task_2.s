.section .bss
.global ram
.lcomm ram, 256

.section .text
.global fill_ram

fill_ram:
    # Indirect addressing using RCX

    mov $0x50, %rcx      # starting address
    mov $9, %rdx         # 9 locations

loop_fill:
    movb $0xFF, ram(%rcx)
    inc %rcx
    dec %rdx
    jnz loop_fill

    ret

.section .note.GNU-stack,"",@progbits
