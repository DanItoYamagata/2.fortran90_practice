program routine03
 implicit none
 integer, parameter :: NN=10
 real, dimension(NN) ::A, B, D
 real :: C
 integer :: I, N
 interface
  subroutine divide(A, C, B, N)
   implicit none
   real, intent(in), dimension(*) ::A
   real, intent(out), dimension(*) :: B
   real, intent(in) :: C
   integer, intent(in) ::N
  end subroutine divide
  subroutine sum(A, B, D, N)
   implicit none
   real, intent(in), dimension(*) :: A, B
   real, intent(out), dimension(*) :: D
   integer, intent(in) ::N
  end subroutine sum
 end interface

 write(*,*) 'N= '
 read(*,*) N
 do I = 1, N
  write(*,*) 'A(', I, ')= '
  read(*,*) A(I)
 end do
 write(*,*) 'C= '
 read(*,*) C
 call divide(A, C, B, N)
 do I = 1, N-1
  write(*,*) 'B(', I,')= ', B(I)
 end do
 
 call sum(A, B, D,  N)
 do I = 1, N
  write(*,*) 'D(', I,')= ', D(I)
 end do

 stop
 
end program routine03

subroutine divide(A, C, B, N)
 implicit none
 real, intent(in), dimension(*) :: A
 real, intent(out), dimension(*) :: B
 real, intent(in) :: C
 integer, intent(in) :: N
 integer :: I
 
 B(1) = A(1) + C
 do I =2,N
  B(I) = A(I) - C*B(I-1)
 end do
 return

end subroutine divide
! To run subroutine sum function R(x)

subroutine sum(A, B ,D , N)
 implicit none
 real, intent(in), dimension(*) :: A, B
 real, intent(out), dimension(*) :: D
 integer, intent(in) :: N
 integer :: I

 D(1) = A(1) + 1
 do I =2,N
  D(I) = A(I) + B(I-1)
 end do
 return

end subroutine sum

