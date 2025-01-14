#include <stdio.h>
#include <Windows.h>

long long	A[1] = {44651868756};	// equ "True\n\0\0\0" in char

int	main()
{
	do
	{
		printf((char *)A);
	}
	while	(1);

	ExitProcess(0);
}