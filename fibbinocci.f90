program fibonacci
    implicit none

    integer :: n 
    real    :: x_0 
    real    :: x_1 = 0
    real    :: x_2 = 1
    integer :: i

    ! 1, 1, 2, 3, 5, 8, 13, 21 ...
       
    print *, 'nth integer in fibonacci:'
    read(*,*) n

    do i = 1, n 
        x_0 = x_1 + x_2
        x_2 = x_1
        x_1 = x_0
    end do 

    print*, x_0

end program fibonacci
