#include <stdio.h>
#include <Windows.h>

long long	fprintfd[1] = {438911775781};	// equ "%4.1f\0\0\0\0" in char
short	line[1] = {10};						// equ "\n\0" in char
double		* A;
char		a = 0, b;

int		main()
{
	A	= (double *)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, 16 * sizeof(double));
	switch	((char)!A)
	{
		case	1:
			ExitProcess(1);
	}
	
	for	(char B = 0;B <= 3; B++)
	{
		for (b = 0;b <= 3; b++)
		{
			printf((char *)fprintfd, A[a]);

			a++;
			A[a]	= 0.1 * a;
		}
		b	= 0;

		printf((char *)line);
	}
	
	HeapFree(GetProcessHeap(), 0, A);

	ExitProcess(0);
}