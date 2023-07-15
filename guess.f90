program guess
    implicit none

    real    :: r
    integer :: u_guess
    integer :: n

    call random_number(r)
    r = int(r * 10 + 1)
    do n = 1, 3
        print *, 'Guess a number between 1 and 10:'
        read (*,*) u_guess

        if (u_guess == r) then 
            print *, 'Hooray! With:', 3-n, 'attempts left'
            exit
        end if

        if (u_guess /= r) then
            print *, 'Oof! Try again ', 3-n, 'attempts left'
        end if

        if (n == 3) then
            print *, 'Game over'
        end if
    
    end do

end program guess




