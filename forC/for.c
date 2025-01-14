#include <stdio.h>
#include <Windows.h>

int			fprintfc[1] = {25381};							// equ "%c\0\0" in char
long long	A[2] = { 6278066737626506568, 11138535027311 };	// equ "Hello, World!", 10, 0, 0 in char
char		* a = (char *)A;

int	main()
{
	for			(char B = 0; B <= 15; B++)
	{
		printf((char *)fprintfc, a[B]);
	}
	ExitProcess(0);
}