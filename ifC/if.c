#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <Windows.h>

int	main()
{
	srand(time(0));

	if			(rand() % 3 == 0)
	{
		printf("False");
	}
	else if		(rand() % 3 == 1)
	{
		printf("True");
	}
	else
	{
		printf("Undefined");
	}

	ExitProcess(0);
}