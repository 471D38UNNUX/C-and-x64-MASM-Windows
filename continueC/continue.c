#include <stdio.h>
#include <Windows.h>

int		fprintfi[1] = { 25637 };	// equ "%d\0\0" in char
short	line[1] = { 10 };			// equ "\n\0" in char
char	A = 0, a = 0;

int		main()
{
	do
	{
		printf((char *)fprintfi, A);

		if	(a == 5)
		{
			A	+= 2;
			a++;

			continue;
		}

		A++;
		a++;
	}
	while	(a <= 9);

	printf((char *)line);

	for		(a = 0; a <= 9; a++)
	{
		printf((char *)fprintfi, A);

		if	(a == 5)
		{
			A	+= 2;

			continue;
		}

		A++;
	}

	printf((char *)line);

	a		= 0;

	while	(a <= 9)
	{
		printf((char *)fprintfi, A);

		if	(a == 5)
		{
			A	+= 2;
			a++;

			continue;
		}

		A++;
		a++;
	}
	ExitProcess(0);
}