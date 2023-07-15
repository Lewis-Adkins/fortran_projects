program Calculator
    implicit none

    real :: a
    real :: b
    character(4) :: Operation

    print *, 'First Number:'
    read(*,*) a

    print *, 'Second Number'
    read(*,*) b

    print *, 'Operation (add, sub, mul, div, exp):'
    read(*,'(A)') Operation

    if (Operation == 'add') then
        print *, a + b
    end if
    
    if (Operation == 'sub') then
        print *, a-b
    end if

    if (Operation == 'mult') then
        print *, a * b
    end if
    
    if (Operation == 'div') then
        print *, a / b
    end if

    if (Operation == 'exp') then
        print *, a**b
    end if

end program Calculator

