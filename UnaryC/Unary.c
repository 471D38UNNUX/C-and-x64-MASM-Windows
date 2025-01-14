#include <stdio.h>

char A = 0;
char * a, B;
char b = 1;
double C;
double c = 22 / 7;

int main()
{
	while (A <= 9)
	{
		printf("%d", A);

		++A;
	}

	printf("\n");

	--A;

loop:
	printf("%d", A);

	--A;

	if (A >= 0)
	{
		goto loop;
	}

	printf("\n");

	++A;

	a = &A;
	B = *a;
	printf("%d\n", B);

	b = sizeof + b;
	printf("%d\n", b);

	b = -b;
	printf("%d\n", b);

	b = ~b;
	printf("%#x\n", b);

	b = !b;
	printf("%d\n", b);

	C = b;
	printf("%f\n", C);

	b = c;
	printf("%d\n", b);

	return 0;
}