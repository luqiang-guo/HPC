as -o cpu_kernel_avx512f.o cpu_kernel_avx512f.s
gcc -D_AVX512F_ -D_AVX512_VNNI_ -D_FMA_ -D_AVX_ -D_SSE_ -c x86_cpu.c -o x86_cpu.o
gcc  x86_cpu.o cpu_kernel_avx512f.o -o x86_cpu