#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
	srand(time(0));

	switch (rand() % 3)
	{
		case 0:
			printf("False");
			break;
		case 1:
			printf("True");
			break;
		default:
			printf("Undefined");
			break;
	}

	return 0;
}