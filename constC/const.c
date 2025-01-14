#include <stdio.h>
#include <Windows.h>

#define true 1
#define false 0

int				fprintfi[1] = { 25637 };	// equ "%d\0\0" in char
const double	pi = 22.0 / 7.0;
double			A;

int				main()
{
	A	= 22.0 / 7.0;

	if	(A == pi)
	{
		printf((char *)fprintfi, true);
	}

	ExitProcess(0);
}