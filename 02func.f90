program func02
 implicit none
 integer :: I
 real :: S
 interface
  function SP(A, B, N)
   implicit none
   real :: SP
   real, dimension(*), intent(in) ::A, B
   integer, intent(in) :: N
 end interface
    S = 0.0
    do I =1, N
     S = A(I)* B(I) + S
    end do
    SP = S
  end function SP 
end func02 sp
