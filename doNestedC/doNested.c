#include <stdio.h>
#include <Windows.h>

int		fprintfi[1] = {6566693};	// equ "%3d\0" in char
short	line[1] = {10};				// equ "\n\0" in char
char	A = 0, a = 0, B = 0;

int		main()
{
	do
	{
		do
		{
			printf((char *)fprintfi, A);
			
			A++;
			a++;
		}
		while	(a <= 3);
		printf((char *)line);

		a		= 0;
		B++;
	}
	while	(B <= 3);
	
	ExitProcess(0);
}