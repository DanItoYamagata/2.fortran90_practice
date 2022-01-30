program if01
implicit none
real :: A,B,C,D,S,T

	write(*,*) 'A,B,C= ' !To enter Ax**2 + Bx +C=0
	read(*,*) A,B,C
	D = B**2-4.0*A*C !A discriminant for inputed equation
	S =sqrt(ABS(D))/(2.0*A) !The second term of The equation of solution for x
	T = -B/(2.0*A) !The first term of the equation of solution for x
	if (D>0.0) then !Two solution of the equation(real one)
	  write(*,*) 'X1= ' ,T+S
	  write(*,*) 'X2= ' ,T-S

	else if (D==0.0) then !Only one solution 
	  write(*,*) 'X=' ,T
	else !(Imaginary one)
	  write(*,*) 'X1=' ,T,' + ', S, 'i'
	  write(*,*) 'X2=' ,T,' - ', S, 'i'
	end if
	stop
end program if01
