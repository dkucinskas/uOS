.section ".text.boot"

.global _start

_start:
    # GPIO address
    ldr r0, =0x20200000

    mov r1, #1
    lsl r1, #18
    str r1, [r0,#4]
    
    mov r1, #1
    lsl r1, #16
    str r1, [r0,#40]

loop$:
    b loop$

