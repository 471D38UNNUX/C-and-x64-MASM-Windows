#include <stdio.h>

char A = 'A';
char a = 0;
char B = 0;

int main()
{
	while (B <= 3)
	{
		while (a <= 3)
		{
			printf("%c", A);

			A++;
			a++;
		}
		printf("\n");
		
		a = 0;
		B++;
	}
	
	return 0;
}