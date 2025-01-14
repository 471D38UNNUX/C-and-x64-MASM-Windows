#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <immintrin.h>
#include <intrin.h>
#include <Windows.h>

long long						addi[2] = {2334031326977483813, 44629827645};							// equ "%d + %d = %d\n\0\0\0" in char
long long						addis[2] = {2334031326977483813, 139119108157};							// equ "%d + %d = %d \0\0\0" in char
long long						subi[2] = {2334031327011038245, 44629827645};							// equ "%d - %d = %d\n\0\0\0" in char
long long						subis[2] = {2334031327011038245, 139119108157};							// equ "%d - %d = %d \0\0\0" in char
long long						addf[3] = {2675185596811914789, 3325099346791642926, 681527};			// equ "%.7f + %.7f = %.7f\n\0\0\0\0\0" in char
long long						subf[3] = {2675187795835170341, 3325099346791642926, 681527};			// equ "%.7f - %.7f = %.7f\n\0\0\0\0\0" in char
long long						sublls[3] = {2334031327011038245, 9117616088358973};					// equ "%d - %d = %lld \0" in char
long long						addds[3] = {2317982056563420709, 2323048606144212517, 35623351168549};	// equ "%.15f + %.15f = %.15f\0\0" in char
long long						subds[3] = {2318545006516842021, 2323048606144212517, 35623351168549};	// equ "%.15f - %.15f = %.15f\0\0" in char
int								fprintfis[1] = {2122789};												// equ "%d \0" in char
short							line[1] = {10};															// equ "\n\0" in char
int								cpuInfo[4];
char							avx512f = 0, rdrandf = 0, avx2 = 0, A, a, f, h = 0, I, i = 0, J = 0, l, M = 0, m, N, n, R = 0, T, t = 0, U = 0, u = 0, w, X = 0;
short							B, * e, * Q;
float							b, C, c, O, o, P;
static char						randc(void) {return	(char)rand() % 256;}
static short					rands(void)
{
	short	D = 0;
	char	d = 0;

	if (rdrandf)
	{
		_rdrand16_step((unsigned short *) & D);

		return	D;
	}
	else
	{
	l1:
		switch	((char)(d <= 1))
		{
			case	1:
				D		|= (short)(unsigned char)randc() << (d * 8), d++;

				goto	l1;
			default: return	D;
		};
	}
};
static int						randi(void)
{
	int		D = 0;
	char	d;

	if	(rdrandf)
	{
		_rdrand32_step((unsigned int *) & D);

		return	D;
	}
	else
	{
		for		(d = 0; d <= 1; d++) D |= (int)(unsigned short)rands() << (d * 16);

		return	D;
	}
};
static float					randf(void)
{
	int		D = randi(), d = randi();

	return	(float)D / (float)d;
};
unsigned char					E, F, p, q = 0;
__declspec(align(32))			short G[16], g[16];
__declspec(align(64))			int H[16];
static double					randd(void)
{
	long long	D = 0, d = 0;
	char		k = 0;

	if (rdrandf)
	{
		_rdrand64_step((unsigned long long *) & D);
		_rdrand64_step((unsigned long long *) & d);

		return	(double)D / (double)d;
	}
	else
	{
		do
		{
			D	|= (long long)(unsigned int)randi() << (k * 32), d |= (long long)(unsigned int)randi() << (k * 32), k++;
		}
		while	(k <= 1);

		return	(double)D / (double)d;
	}
};
__declspec(align(32)) double	j[4], K[4], L[4], V[4], v[4], W[4];
__declspec(align(32)) int		r[8], S[8];
__declspec(align(64)) long long	s[8];
;

int								main()
{
	__cpuidex(cpuInfo, 7, 0);

	switch (cpuInfo[1] & 1 << 16)
	{
		case 0:
			__cpuid(cpuInfo, 1);

			if		(cpuInfo[2] & 1 << 30) rdrandf = 1, avx2 = 1;
			else
			{
				__cpuidex(cpuInfo, 7, 0);

				switch	(cpuInfo[1] & 1 << 5)
				{
					case	0: break;
					default:
						avx2	= 1;

						break;
				}
			}

			break;
		default:
			avx512f	= 1, rdrandf = 1, avx2 = 1;

			break;
	}
	srand((unsigned int)time(0));

	A		= randc(), a = randc(), B = A + a;

	printf((char *)addi, A, a, B);

	b		= randf(), C = randf(), c = b + C;

	printf((char *)addf, b, C, c);

	E		= rand() % 256, e = (short *)malloc((E + 1) * 2);

	switch	((unsigned long long)e) case 0: goto error;

	for		(F = 0; F <= E; F++)
	{
		e[F]	= randc();

		printf((char *)fprintfis, e[F]);
	}

	printf((char *)line);

	while	(f <= 15) G[f] = rands(), g[f] = rands(), f++;
	if		(avx512f) _mm512_store_si512((__m512i*)H, _mm512_add_epi32(_mm512_cvtepi16_epi32(_mm256_load_si256((__m256i*)G)), _mm512_cvtepi16_epi32(_mm256_load_si256((__m256i*)g))));
	else if (avx2)
	{
		do
		{
			_mm256_store_si256((__m256i *)(H + h * 8), _mm256_add_epi32(_mm256_cvtepi16_epi32(_mm_load_si128((__m128i *)(G + h * 8))), _mm256_cvtepi16_epi32(_mm_load_si128((__m128i *)(g + h * 8)))));

			h++;
		}
		while	(h <= 1);
	}
	else	for (I = 0; I <= 3; I++) _mm_store_si128((__m128i*)(H + I * 4), _mm_add_epi32(_mm_cvtepi16_epi32(_mm_loadl_epi64((__m128i*)(G + I * 4))), _mm_cvtepi16_epi32(_mm_loadl_epi64((__m128i*)(g + I * 4)))));

	while	(i <= 15)
	{
		printf((char*)addis, G[i], g[i], H[i]);

		i++;
	}

	printf((char *)line);
	l1:
	switch	((char)(J <= 3))
	{
		case	1:
			j[J]	= randd(), K[J] = randd(), J++;

			goto l1;
	}

	switch	(avx2)
	{
		case	1:
			_mm256_store_pd(L, _mm256_add_pd(_mm256_load_pd(j), _mm256_load_pd(K)));

			break;
		default: for (l = 0; l <= 1; l++) _mm_store_pd((L + l * 2), _mm_add_pd(_mm_load_pd(j + l * 2), _mm_load_pd(K + l * 2)));	
	}

	while	(M <= 3)
	{
		printf((char *)addds, j[M], K[M], L[M]);

		M++;
	}

	printf((char *)line);

	m		= randc(), N = randc(), n = m - N;

	printf((char *)subi, m, N, n);

	O		= randf(), o = randf(), P = O - o;

	printf((char *)subf, O, o, P);

	p		= rand() % 256, Q = (short *)CoTaskMemAlloc((p + 1) * 2);

	if		(!Q) goto error;
l2:
	switch	((char)(q <= p))
	{
		case	1:
			Q[q]	= randc();

			printf((char *)fprintfis, Q[q]);

			q++;

			goto	l2;
	}

	printf((char *)line);

	do		r[R] = randi(), S[R] = randi(), R++;
	while	(R <= 7);

	if		(avx512f) _mm512_store_si512((__m512i*)s, _mm512_sub_epi64(_mm512_cvtepi32_epi64(_mm256_load_si256((__m256i*)r)), _mm512_cvtepi32_epi64(_mm256_load_si256((__m256i*)S))));
	else if (avx2)
	{
		for		(T = 0; T <= 1; T++) _mm256_store_si256((__m256i*)(s + T * 4), _mm256_sub_epi64(_mm256_cvtepi32_epi64(_mm_load_si128((__m128i*)(r + T * 4))), _mm256_cvtepi32_epi64(_mm_load_si128((__m128i*)(S + T * 4)))));
	}
	else
	{
		while	(t <= 3)
		{
			_mm_store_si128((__m128i *)(s + t * 2), _mm_sub_epi64(_mm_cvtepi32_epi64(_mm_loadl_epi64((__m128i *)(r + t * 2))), _mm_cvtepi32_epi64(_mm_loadl_epi64((__m128i *)(S + t * 2)))));

			t++;
		}
	}
l3:
	switch	((char)(U <= 7))
	{
		case	1:
			printf((char *)sublls, r[U], S[U], s[U]);

			U++;

			goto	l3;
	}

	printf((char *)line);

	do
	{
		V[u]	= randd(), v[u]	= randd(), u++;
	}
	while	(u <= 3);

	if		(avx2) _mm256_store_pd(W, _mm256_sub_pd(_mm256_load_pd(V), _mm256_load_pd(v)));
	else	for (w = 0; w <= 1; w++) _mm_store_pd((W + w * 2), _mm_add_pd(_mm_load_pd(V + w * 2), _mm_load_pd(v + w * 2)));

	while (X <= 3)
	{
		printf((char*)subds, V[X], v[X], W[X]);

		X++;
	}

	printf((char *)line);

	free(e);

	CoTaskMemFree(Q);

	ExitProcess(0);
	error:
	ExitProcess(1);
}