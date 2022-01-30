program matrics01
implicit none
integer :: I, J
real, dimension(3,3) :: A, B, C

 do I =1,3
   do J =1,3
     A(I,J) =3*(I-1)+J
   end do
 end do


 B = matmul(A,A)
 C = matmul(A,B)

 write(*,*) 'A='
 do I=1,3
   write(*,'(1X,3F7.0)') (A(I,J), J=1,3)
 end do
 write(*,*) 'A^2='
 do I=1,3
   write(*,'(1X, 3F7.0)') (B(I,J), J=1,3)
 end do
 write(*,*) 'A^3='
 do I=1,3
   write(*,'(1X, 3F7.0)') (C(I,J), J=1,3)
 end do

 stop
end program matrics01
