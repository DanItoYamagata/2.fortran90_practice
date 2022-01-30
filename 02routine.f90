program routine02
 implicit none
 integer :: I, J, K, L, M, N
 interface
  subroutine fraction(I, J, K, L, M, N)
   implicit none
   integer, intent(IN) :: I, J, K, L
   integer, intent(OUT) ::M, N
  end subroutine fraction
 end interface

 write(*,*)  'I, J, K, L=' ! To enter input I/ J, K/L
 read(*,*) I, J, K, L
 call fraction(I, J, K, L, M, N) ! To move the subroutine
 write(*, '(1X, I5, 3X, I5, 3X, I5)') I, K, M ! To show us numerator
 write(*,*) '----- + ----- = -----'
 write(*,'(1X, I5, 3X, I5, 3X, I5)') J, L, N ! To show us denominator
 stop

end program routine02

subroutine fraction(I, J, K, L, M, N)
 implicit none
 integer, intent(IN) :: I, J, K, L
 integer, intent(OUT) :: M, N
 integer :: common_devisor
 interface
  subroutine GCD(J, L, K) ! To move the subroutine
   implicit none
   integer, intent(IN) :: L, J
   integer, intent(OUT) :: K
  end subroutine GCD
 end interface

 M = I*L + J *K ! To calculate the numerator of M/N
 N = J * L ! To calculate the denominator of M/N
 call GCD(J, L, common_devisor)
 M = M/common_devisor
 N = N/common_devisor
 return

end subroutine fraction

subroutine GCD(J, L, K)
 implicit none
 integer, intent(IN) ::L, J
 integer, intent(OUT) :: K
 integer :: I, M, N

 M = L
 N = J
 write(*,*) 'M =L', M
 write(*,*) 'N=J', N
 do 
  I =MOD(M, N)
  write(*,*) 'I=MOD(M,N)', I
  if (I == 0) then
   K = N
   write(*,*)  'Update K=N', K
   exit
  else 
   M = N
   write(*,*) 'Update M= N', M
   N = I
   write(*,*) 'Update N=L', N
  end if
 end do
 return 

end subroutine GCD








