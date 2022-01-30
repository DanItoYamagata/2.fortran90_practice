program if04
implicit none
integer :: L,M, N

 write(*,*) 'M, N ='
 read(*,*) M,N
 
 L = mod(M,N)
 do while (L/=0)
   M = N
   N = L
   L = mod(M, N)
 end do

 write(*,*) 'gcd', N
 stop

end program if04
