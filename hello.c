#include <stdio.h>
#include <omp.h>

void hello_from_c_omp_() {
    #pragma omp parallel
    {
        printf("Hello from C, thread %d of %d\n", omp_get_thread_num(), omp_get_num_threads());
    }
}

