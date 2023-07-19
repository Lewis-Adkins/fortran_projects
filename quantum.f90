program quantum
    use ISO_FORTRAN_ENV, only : REAL128
    implicit none
    character(len=*), parameter :: OUT_FILE = 'quantum.txt' ! Output file.
    character(len=*), parameter :: PLT_FILE = 'quantum.plt' ! Gnuplot file.
    integer,          parameter :: N        = 100           ! Number of values.

    integer :: i, fu, NRG
    real    :: L = N * 0.1 ** 4 !10 *3 *10 **
    real    :: x(N)

    real(REAL128) :: pi    = 4 * atan(1.0_REAL128)
    real(REAL128) :: h_bar =   1.054571817E-34
    real(REAL128) :: m     =  9.10938356E-31
    
    real(REAL128) :: phi(N), p(N)
    real(REAL128) :: E 

    print*, 'Energy Level?'
    read *, NRG

    E =  (NRG**2 * pi**2 * h_bar**2) / (2 * m * (L*100)**2)
    print *, E

    do i = 1, N
        x(i)   = i * L
        phi(i) = sqrt(2/(L * 100)) * sin (NRG * pi * x(i)/(L * 100))
        p(i)   = 2 /(L * 100) *(sin(NRG * pi * x(i)/ (L * 100))) ** 2
    end do

    open (action = 'write', file = OUT_FILE, newunit = fu, status = 'replace')

    do i = 1, N
        write (fu, *) x(i), phi(i), p(i)
    end do

    close (fu)

    call execute_command_line('gnuplot -p ' // PLT_FILE)
end program quantum