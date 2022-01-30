program if05
implicit none
real :: L, K
integer ::  N, M

 N = 2
 M = N+1
 do while (L < 10.0)
   L = 1/N
   K = 1/M
   L = L + K
   N = N+1
 end do

 write(*,*) '# of summing up is', N-1
 write(*,*) 'The total value is', L
 stop

end program if05  
