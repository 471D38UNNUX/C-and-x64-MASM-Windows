#include <stdio.h>
#include <Windows.h>

char	A = 0;

int		main()
{
	loop:
	printf("%d", A);

	A++;

	switch	(A <= 9)
	{
		case	1:
			goto	loop;
		default:
			break;
	}
	
	ExitProcess(0);
}