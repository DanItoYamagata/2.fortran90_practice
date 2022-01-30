program func04
 implicit none
 integer :: N, M, I, R
 interface 
   function ncr(X,Y)
    implicit none
    integer :: ncr
    integer, intent(in) :: X, Y
   end function ncr
 end interface

   write(*,*) 'N ='
   read(*,*) N
   write(*,*) 'R='
   read(*,*) R
   M = ncr(N, R)
   write(*,*) 'nCr= ', M
   stop
end program func04

function ncr(X, Y)
 implicit none
 integer :: ncr, A, B,C ,I ,J , K
 integer, intent(in) :: X, Y
  A = 1
  do I = 2, X
    A = A*I
  end do
  B = 1
  do J =2, Y
    B = B*J
  end do
  C = 1
  do K =2, X-Y
    C= C*K
  end do
  ncr = A/(B*C) 

end function ncr  
