#include <stdio.h>
#include <xmmintrin.h>
#include <intrin.h>

__m128i A;
char a = 0;
short B[8];

int main()
{
	A = _mm_setr_epi16(256, 257, 258, 259, 260, 261, 262, 263);
	_mm_storeu_si128((__m128i *)B, A);

	while (a <= 7)
	{
		printf("%d\n", B[a]);
		a++;
	}

	return 0;
}