#include <stdio.h>

int	main()
{
	char	* msg = "Hello, World!\n\0";
	
	printf("%s", msg);

	return 0;
}