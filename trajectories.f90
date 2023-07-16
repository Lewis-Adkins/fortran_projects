program trajectories
    implicit none

    real :: pi  = 4 * atan (1.0_16)
    
    real :: t_g_h
    real :: t_h_g
    real :: t_total

    real :: distance
    real :: height

    real :: V0     
    real :: V0x
    real :: V0y

    real :: g   = 9.81
    real :: theta
    real :: degrees

    print *, ' Initial Velocity (m/s):'
    read(*,*) V0

    print *,'Angle (degrees):'
    read *, degrees
    
    
    theta = degrees * pi / 180 ! Convert to degrees

    V0x         = V0 * cos(theta)
    V0y         = V0 * sin(theta)

    !SOLVING FROM GROUND TO HEIGHT
    t_g_h       = V0y / g
    height      = V0y * t_g_h - (1/2) * g * t_g_h **2

    !SOLVING FROM HEIGHT TO GROUND
    t_h_g       = sqrt(2 * height / g)

    !TIME TOTAL
    t_total     = t_g_h + t_h_g
    distance    =  V0x * t_total

    print *, 'Total distance:', distance, 'meters in', t_total, 'seconds'

end program trajectories