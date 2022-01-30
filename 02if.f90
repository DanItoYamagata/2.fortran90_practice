program if02
implicit none
integer :: I, J=1,K
integer :: N 
real, dimension(10000) ::A, B

	write(*,*) 'N='
	read(*,*) N
	A =0
	do I =2, N
	  if (A(I).EQ.0) then
	    B(J) =I
	    J =J+1
	    do K = I*I, N, I
	      A(K) =1
	    end do
	  end if
	end do
	write(*, '(1X, 10I5)') B(1:J-1)
	stop
end program if02
