program matrics02
implicit none
integer, parameter :: NN=10
integer :: I,J,K,N
real :: P,Q,S
real, dimension(NN,NN) ::A
real, dimension(NN) ::B,X
! To dial your input
 write(*,*) 'N='
 read(*,*) N
 write(*,'(1X,17Hcoefficient&RHS_of_matrics,/)')
 do I=1,N
   read(*,*) (A(I,J), J=1,N),B(I) !To define Ax=B, and to enter A & B
 end do
 write(*,*) 'A,B =' ! To epress the content of matrics A + B
 do I=1,N
   write(*,*) (A(I,J), J=1,N),B(I) ! For each elements of A & B
 end do
!To calculate

 do K=1, N-1
   P=A(K,K) !a_11
   do J =K+1,N
     A(K,J) =A(K,J)/P !x_J +.... +a_{KN}/a_{KJ}* x_{N}  
   end do
   B(K) =B(K)/P !b_K/a_{KK}
   do I=K+1, N
     Q=A(I,K) !????
     do J=K+1, N
	A(I,J)=A(I,J)-Q*A(K,J) !????
     end do
     B(I) =B(I) -Q*B(K)
   end do
 end do
 X(N) =B(N)/A(N,N) !????
 do K =N-1,1,-1
   S=B(K)
   do J=K+1,N
     S =S-A(K,J) *X(J)  !????
   end do
   X(K) =S
 end do
!To finish
 write(*,*) 'The solution of X'
 do I=1,N
   write(*,*) X(I)
 end do
 stop

end program matrics02
