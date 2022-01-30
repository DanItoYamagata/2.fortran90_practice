program if03 !To distingusih max and min of all data sets
implicit none
integer ::I, N, J
integer, parameter :: NN=1000
real, dimension(NN) ::A
real :: MAX, MIN, MAX_1, MIN_1

 write(*,*) 'N ='
 read(*,*) N
 do I=1,N
   write(*,'(1X,2HA(,I3,2H)=)') I
   read(*,*) A(I)
 end do

 MAX =Abs(A(1))
 MIN =Abs(A(1))
 do I =2, N
   if(Abs(A(I))> MAX) MAX=Abs(A(I))
   if(Abs(A(I))< MIN) MIN=Abs(A(I))
 end do

 MAX_1 = A(1)
 MIN_1 = A(1)
 do I =2, N
   if(A(I)> MAX_1) MAX_1=A(I)
   if(A(I)< MIN_1) MIN_1=A(I)
 end do


 write(*,*) 'The maximum value is', MAX_1
 write(*,*) 'The absolute value of Maximum is', MAX
 write(*,*) 'The minimum value is', MIN_1
 write(*,*) 'The absolute value of Minimum is', MIN
 stop

end program if03
