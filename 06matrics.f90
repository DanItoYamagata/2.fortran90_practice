program matrics06
implicit none
integer :: I, J
real :: A, B, C, D, E, F
integer, dimension(2,2) ::U
integer, dimension(2,1) ::V, W


	write(*, *) 'A, B ='
	read(*,*)  A,B
	write(*,*) 'C='
	read(*,*) C
	F = C*3.1415/180.0
	D = sin(F)
	E = cos(F)
	V = reshape((/A,B/), (/2,1/))
	U = reshape((/ E, D, -D, E /),(/2,2/))
	!U = (/ E, -D, D, E /)
	!U(1,1) = E 
	!U(1,2) =-D
	!U(2,1) = D 
	!U(2,2) = E
	W = matmul(U,V)
	write(*,*) W(2,1),W(1,1)
	write(*,*) 'The matrics of V is', V
	write(*,*) 'The matrics of U is', U
	write(*,*) 'The matrics of W is', W
	stop
end program matrics06
