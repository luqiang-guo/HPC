#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "cpu_kernel.h"

static double get_time(struct timespec *start,
	struct timespec *end)
{
	return end->tv_sec - start->tv_sec +
		(end->tv_nsec - start->tv_nsec) * 1e-9;
}

void test_avx512()
{
    struct timespec start, end;
	double time_used, perf;

    // warm up
    cpufp_kernel_x86_avx512f_1_fp32();
    
    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    cpufp_kernel_x86_avx512f_1_fp32();
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);
	time_used = get_time(&start, &end);
    printf("avx512 1 time used : %lf \n", time_used);

    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    cpufp_kernel_x86_avx512f_2_fp32();
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);
	time_used = get_time(&start, &end);
    printf("avx512 2 time used : %lf \n", time_used);

    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    cpufp_kernel_x86_avx512f_4_fp32();
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);
	time_used = get_time(&start, &end);
    printf("avx512 4 time used : %lf \n", time_used);

    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
    cpufp_kernel_x86_avx512f_5_fp32();
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);
	time_used = get_time(&start, &end);
    printf("avx512 5 time used : %lf \n", time_used);

}

int main()
{
    test_avx512();
    return 0;
}