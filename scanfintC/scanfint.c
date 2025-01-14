#include <stdio.h>

int main()
{
	char msg[14];
	
	scanf_s("%[^\n]s", msg, 14);
	printf("%s", msg);
	return 0;
}