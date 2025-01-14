#include <stdio.h>
#include <Windows.h>

long long	A[1] = {44651868756};	// equ "True\n\0\0\0" in char

int	main()
{
	for		(char a = 1; a != 0;)
	{
		printf((char *)A);
	}

	ExitProcess(0);
}