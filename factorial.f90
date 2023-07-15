program factorial
    implicit none

    integer :: input
    integer :: fact
    integer :: i

    print *, 'Input number:'
    read(*,*) input

    fact = 1

    do i = 1, input
        fact = fact * i
    end do
    print *, fact

end program

