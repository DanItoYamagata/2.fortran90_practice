program matrics05
implicit none
integer :: I
integer, dimension(2,2) ::A
integer, dimension(2,1) ::U
integer, dimension(1,2) ::V
	U =reshape((/2,3/), (/2,1/))
	V =reshape((/5,8/), (/1,2/))
	A =matmul(U,V)
	do I=1,2
	  write(*,*) A(I,:)
	end do
	stop
end program matrics05
