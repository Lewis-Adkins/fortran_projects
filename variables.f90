program variables
    implicit none
    
    integer :: amount
    real :: pi
    complex :: frequency
    character :: initial
    logical :: isOkay

    amount    = 10
    pi        = 3.14
    frequency = (1, -0.5)
    initial   = 'L'
    isOkay    = .true.

    print *, 'The value of amount (integer) is: ', amount
    print *, 'Pi is equal to', pi
    print *, 'The frequency is', frequency
    print *, 'The initial is ', initial
    print *, 'The logical (Boolean) is', isOkay


    
end program variables