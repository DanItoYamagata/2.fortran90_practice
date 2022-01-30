program routine01
 implicit none
 integer :: A, B, C
 interface
  subroutine WA(X, Y, Z)
   implicit none
   integer, intent(IN) :: X, Y
   integer, intent(OUT) :: Z
  end subroutine WA
 end interface

 write(*,*) 'A, B= '
 read(*,*) A, B
 call WA(A, B, C)
 write(*,*) 'C=', C
 stop

 end program routine01

 subroutine WA(X, Y, Z)
  implicit none
  integer, intent(IN) :: X, Y
  integer, intent(OUT) :: Z
   Z = X + Y
   return 
 end subroutine WA
