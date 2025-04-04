program call_c_omp
  implicit none

  interface
    subroutine hello_from_c_omp()
      implicit none
    end subroutine hello_from_c_omp
  end interface

  call hello_from_c_omp()
end program call_c_omp
