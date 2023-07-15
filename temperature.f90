function f_to_c(a) result(b)
    implicit none
    real, intent(in) :: a
    real             :: b
    
    b = (a - 32.0) * 5.0 / 9.0
end function f_to_c
   
function c_to_f(a) result(b)
    implicit none
    real, intent(in) :: a
    real             :: b
   
    b = (a * 9.0 / 5.0) + 32.0
end function c_to_f

program temperature
    implicit none
 
    real         :: number
    real         :: f_to_c
    real         :: c_to_f
    character(1) :: Temp
    character(1) :: degree
 
    degree = char(176)
 
    print *, 'Temperature Number:'
    read(*, *) number
 
    print *, 'Fahrenheit or Celsius? (F or C)'
    read(*,'(A)') Temp
 
    if (Temp == 'F') then
        print *, f_to_c(number), degree, 'C'
    end if
 
 
    if (Temp == 'C') then
        print *, c_to_f(number), degree, "F"
    end if
 
 end program temperature
