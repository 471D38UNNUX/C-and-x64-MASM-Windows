#include <stdio.h>
#include <stdlib.h>
#include <time.h>

char A[16];
char a = 0;
char B = 3;
char b = 3;
char C[4][4];
struct c
{
	char D;
	struct c * d;
} E;

int main()
{
	do
	{
		do
		{
			A[a] = a;

			printf("%3d", A[a]);

			a++;
			B--;
		} while (B >= 0);
		printf("\n");

		B = 3;

		b--;
	} while (b >= 0);

	a = 0;

	for (b = 0; b <= 3; b++)
	{
		for (B = 0; B <= 3; B++)
		{
			C[b][B] = a;

			printf("%3d", C[b][B]);

			a++;
		}
		printf("\n");

		B = 0;
	}

	E.d = & E;
	printf("%p\n", E.d);

	srand((unsigned int)time(0));

	(E.d)->D = rand() % 256;
	printf("%d", (E.d)->D);

	return 0;
}