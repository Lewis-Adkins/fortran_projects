program arithmetic
    implicit none

    real :: pi
    real :: radius
    real :: height
    real :: area
    real :: volume

    pi = 3.141592653

    print *, 'Cylinder base radius:'
    read(*,*) radius

    print *, 'Cylinder height:'
    read(*,*) height

    area = pi * radius **2
    volume = area * height

    print *, 'radius:', radius
    print *, 'height:', height
    print *, 'area:', area
    print *, 'volume:', volume

end program arithmetic
