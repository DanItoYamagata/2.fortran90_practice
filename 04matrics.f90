program matrics04
implicit none
integer :: I
integer, dimension(3,3) :: A
integer, dimension(3) :: U,V
	A =reshape((/(I,I=1,9)/), (/3,3/))
	U =(/7,5,3/)
	V=matmul(U,A)
	write(*,'(1X, 3I5)') V
	stop
end program matrics04
