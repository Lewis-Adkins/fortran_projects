program float
    use, intrinsic :: iso_fortran_env, only: sp=> real32, dp => real64
    implicit none

    real(sp) :: float32
    real(dp) :: float64

    float32 = 1.0_sp
    float64 = 1.0_dp

    print *, 'This is a 32 bit floating-point',float32
    print *, 'This is a 64 bit floating-point',float64


end program float