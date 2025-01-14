#include <stdio.h>

char msg[14];

static void scan()
{
	scanf_s("%[^\n]s", msg, 14);
}

int main()
{
	scan();
	printf("%s", msg);
	return 0;
}