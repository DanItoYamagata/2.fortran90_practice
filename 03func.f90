program func03
 implicit none
 integer :: N, M, I
 interface 
   function fact(X)
    implicit none
    integer :: fact
    integer, intent(in) :: X
   end function fact
 end interface

   write(*,*) 'N ='
   read(*,*) N
   M = fact(N)
   write(*,*) 'N!= ', M
   stop
end program func03

function fact(X)
 implicit none
 integer ::I, fact
 integer, intent(in) :: X
  fact = 1
  do I = 2, X
    fact = fact*I
  end do
end function fact  
