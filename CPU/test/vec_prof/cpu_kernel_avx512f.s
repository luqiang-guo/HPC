.globl cpufp_kernel_x86_avx512f_1_fp32
.globl cpufp_kernel_x86_avx512f_2_fp32
.globl cpufp_kernel_x86_avx512f_4_fp32
.globl cpufp_kernel_x86_avx512f_5_fp32

.globl cpufp_kernel_x86_avx512f_fp64

cpufp_kernel_x86_avx512f_1_fp32:
    mov $0x140000000, %rax
    vpxorq %zmm0, %zmm0, %zmm0
    vpxorq %zmm1, %zmm1, %zmm1
.cpufp.x86.avx512f.1.fp32.L1:
    vfmadd231ps %zmm0, %zmm0, %zmm0
    vfmadd231ps %zmm1, %zmm1, %zmm1
    sub $0x1, %rax
    jne .cpufp.x86.avx512f.1.fp32.L1
    ret

cpufp_kernel_x86_avx512f_2_fp32:
    mov $0xA0000000, %rax
    vpxorq %zmm0, %zmm0, %zmm0
    vpxorq %zmm1, %zmm1, %zmm1
    vpxorq %zmm2, %zmm2, %zmm2
    vpxorq %zmm3, %zmm3, %zmm3
.cpufp.x86.avx512f.2.fp32.L1:
    vfmadd231ps %zmm0, %zmm0, %zmm0
    vfmadd231ps %zmm1, %zmm1, %zmm1
    vfmadd231ps %zmm2, %zmm2, %zmm2
    vfmadd231ps %zmm3, %zmm3, %zmm3
    sub $0x1, %rax
    jne .cpufp.x86.avx512f.2.fp32.L1
    ret

cpufp_kernel_x86_avx512f_4_fp32:
    mov $0x50000000, %rax
    vpxorq %zmm0, %zmm0, %zmm0
    vpxorq %zmm1, %zmm1, %zmm1
    vpxorq %zmm2, %zmm2, %zmm2
    vpxorq %zmm3, %zmm3, %zmm3
    vpxorq %zmm4, %zmm4, %zmm4
    vpxorq %zmm5, %zmm5, %zmm5
    vpxorq %zmm6, %zmm6, %zmm6
    vpxorq %zmm7, %zmm7, %zmm7
.cpufp.x86.avx512f.4.fp32.L1:
    vfmadd231ps %zmm0, %zmm0, %zmm0
    vfmadd231ps %zmm1, %zmm1, %zmm1
    vfmadd231ps %zmm2, %zmm2, %zmm2
    vfmadd231ps %zmm3, %zmm3, %zmm3
    vfmadd231ps %zmm4, %zmm4, %zmm4
    vfmadd231ps %zmm5, %zmm5, %zmm5
    vfmadd231ps %zmm6, %zmm6, %zmm6
    vfmadd231ps %zmm7, %zmm7, %zmm7
    sub $0x1, %rax
    jne .cpufp.x86.avx512f.4.fp32.L1
    ret

cpufp_kernel_x86_avx512f_5_fp32:
    mov $0x40000000, %rax
    vpxorq %zmm0, %zmm0, %zmm0
    vpxorq %zmm1, %zmm1, %zmm1
    vpxorq %zmm2, %zmm2, %zmm2
    vpxorq %zmm3, %zmm3, %zmm3
    vpxorq %zmm4, %zmm4, %zmm4
    vpxorq %zmm5, %zmm5, %zmm5
    vpxorq %zmm6, %zmm6, %zmm6
    vpxorq %zmm7, %zmm7, %zmm7
    vpxorq %zmm8, %zmm8, %zmm8
    vpxorq %zmm9, %zmm9, %zmm9
.cpufp.x86.avx512f.5.fp32.L1:
    vfmadd231ps %zmm0, %zmm0, %zmm0
    vfmadd231ps %zmm1, %zmm1, %zmm1
    vfmadd231ps %zmm2, %zmm2, %zmm2
    vfmadd231ps %zmm3, %zmm3, %zmm3
    vfmadd231ps %zmm4, %zmm4, %zmm4
    vfmadd231ps %zmm5, %zmm5, %zmm5
    vfmadd231ps %zmm6, %zmm6, %zmm6
    vfmadd231ps %zmm7, %zmm7, %zmm7
    vfmadd231ps %zmm8, %zmm8, %zmm8
    vfmadd231ps %zmm9, %zmm9, %zmm9
    sub $0x1, %rax
    jne .cpufp.x86.avx512f.5.fp32.L1
    ret

cpufp_kernel_x86_avx512f_fp64:
    mov $0x20000000, %rax
    vpxorq %zmm0, %zmm0, %zmm0
    vpxorq %zmm1, %zmm1, %zmm1
    vpxorq %zmm2, %zmm2, %zmm2
    vpxorq %zmm3, %zmm3, %zmm3
    vpxorq %zmm4, %zmm4, %zmm4
    vpxorq %zmm5, %zmm5, %zmm5
    vpxorq %zmm6, %zmm6, %zmm6
    vpxorq %zmm7, %zmm7, %zmm7
    vpxorq %zmm8, %zmm8, %zmm8
    vpxorq %zmm9, %zmm9, %zmm9
.cpufp.x86.avx512f.fp64.L1:
    vfmadd231pd %zmm0, %zmm0, %zmm0
    vfmadd231pd %zmm1, %zmm1, %zmm1
    vfmadd231pd %zmm2, %zmm2, %zmm2
    vfmadd231pd %zmm3, %zmm3, %zmm3
    vfmadd231pd %zmm4, %zmm4, %zmm4
    vfmadd231pd %zmm5, %zmm5, %zmm5
    vfmadd231pd %zmm6, %zmm6, %zmm6
    vfmadd231pd %zmm7, %zmm7, %zmm7
    vfmadd231pd %zmm8, %zmm8, %zmm8
    vfmadd231pd %zmm9, %zmm9, %zmm9
    sub $0x1, %rax
    jne .cpufp.x86.avx512f.fp64.L1
    ret

