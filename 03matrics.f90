program matrics03
implicit none
integer, dimension (3,3) ::A
integer, dimension (3) :: U=(/1,9,3/), V

	A=reshape((/6,1,8,7,5,3,2,9,4/), (/3,3/))
	V=matmul(A,U)
	write(*,*) A
	write(*,'(1X,3I5)') V
	stop
end program matrics03
