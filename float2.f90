program float2
    use, intrinsic :: iso_c_binding, only: sp=> c_float, dp => c_double
    implicit none

    real(sp) :: float32
    real(dp) :: float64

    float32 = 1.0_sp
    float64 = 1.0_dp
    

    print *, 'This is a 32 number:', float32
    print *, 'this is a 64 number:', float64

end program float2