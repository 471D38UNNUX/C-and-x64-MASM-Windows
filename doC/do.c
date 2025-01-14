#include <stdio.h>
#include <Windows.h>

int		fprintfi[1]	= {25637};	// "%d\0\0" in char
char	A = 0;

int		main()
{
	do
	{
		printf((char *)fprintfi, A);
		A++;
	}
	while	(A <= 9);
	
	ExitProcess(0);
}