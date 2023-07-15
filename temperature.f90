program temperature
    implicit none

    real         :: number
    character(1) :: Temp
    character(1) :: degree

    degree = char(176)

    real function FtoCfunc(a) result(b)
        real, intent(in) :: a
        real             :: b
    
        b = (a - 32.0) * 5.0 / 9.0
    end function FtoCfunc
    
    real function CtoFfunc(a) result(b)
        real, intent(in) :: a
        real             :: b
    
        b = (a * 9.0 / 5.0) + 32.0
    end function CtoFfunc

    print *, 'Temperature Number:'
    read(*, *) number

    print *, 'Fahrenheit or Celsius? (F or C)'
    read(*,'(A)') Temp

    if (Temp == 'F') then
        print '(F7.2)', FtoCfunc(number), degree, 'C'
    end if

    if (Temp == 'C') then
        print '(F7.2)', CtoFfunc(number), degree, 'F'
    end if

end program temperature