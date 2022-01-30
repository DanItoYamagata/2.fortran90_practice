program func01
 implicit none
 integer :: A, B, C
 interface
  function sum(X, Y)
   implicit none
   integer :: sum
   integer, intent(in) ::X, Y
  end function sum
 end interface

 write(*,*) 'A, B ='
 read(*,*) A, B
 C = sum(A, B)
 write(*,*) 'C= ', C
 stop

end program func01

function sum(X, Y)
 implicit none
 integer :: sum
 integer, intent(in) :: X, Y
  sum = X + Y
  return
end function sum
