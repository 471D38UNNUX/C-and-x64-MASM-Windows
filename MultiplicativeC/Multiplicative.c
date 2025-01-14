#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <xmmintrin.h>
#include <intrin.h>
#include <math.h>
#include <Windows.h>

long long						muli[2] = {2334031328269329445, 44629827645};									// equ "%d x %d = %d\n\0\0\0" in char
long long						divi[2] = {2334031327044592677, 44629827645};									// equ "%d / %d = %d\n\0\0\0" in char
long long						modfi[3] = {2675250488380777509, 2924860384551012, 0};							// equ "%d %%f %d = %d\n\0\0\0\0\0\0\0\0\0" in char
long long						modfis[3] = {2675250488380777509, 9117309872185444, 0};							// equ "%d %%f %d = %d \0\0\0\0\0\0\0\0\0" in char
long long						modti[3] = {2675265881543566373, 2924860384551012, 0};							// equ "%d %%t %d = %d\n\0\0\0\0\0\0\0\0\0" in char
long long						modtis[3] = {2675265881543566373, 9117309872185444, 0};							// equ "%d %%t %d = %d \0\0\0\0\0\0\0\0\0" in char
long long						mulf[3] = {2675270259207253541, 3325099346791642926, 681527};					// equ "%.7f x %.7f = %.7f\n\0\0\0\0\0" in char
long long						divf[3] = {2675189994858425893, 3325099346791642926, 681527};					// equ "%.7f / %.7f = %.7f\n\0\0\0\0\0" in char
long long						modfff[3] = {7360329987091017253, 2323048606177568032, 44664565285};			// equ "%.7f %%f %.7f = %.7f\n\0\0\0" in char
long long						modtf[3] = {8369136303622008357, 2323048606177568032, 44664565285};				// equ "%.7f %%t %.7f = %.7f\n\0\0\0" in char
long long						mullls[3] = {2675270259177188389, 7792670177143057516, 2122860};				// equ "%lld x %lld = %lld \0\0\0\0\0" in char
long long						divlls[3] = {2675189994828360741, 7792670177143057516, 2122860};				// equ "%lld / %lld = %lld \0\0\0\0\0" in char
long long						mulds[3] = {2339655629770141221, 2323048606144212517, 35623351168549};			// equ "%.15f x %.15f = %.15f \0\0" in char
long long						divds[3] = {2319107956470263333, 2323048606144212517, 35623351168549};			// equ "%.15f / %.15f = %.15f \0\0" in char
long long						modfds[4] = {2676581176892796453, 2334611942182035558, 2334611942182035517, 0};	// equ "%.15f %%f %.15f = %.15f \0\0\0\0\0\0\0\0" in char
long long						modtds[4] = {2676581176892796453, 2334611942182035572, 2334611942182035517, 0};	// equ "%.15f %%t %.15f = %.15f \0\0\0\0\0\0\0\0" in char
short							line[1] = {10};																	// equ "\n\0" in char
int								cpuInfo[4];
char							rdrandf = 0, avx2 = 0, A, a, E, f = 0, i = 0, J = 0, L, l, M, m, o = 0, s = 0, T, V = 0, v, W, w, y = 0, AA = 0, AE, Ae = 0, AF = 0, Af = 0, AJ, Aj = 0;
short							B;
static char						randc(void)
{
	return	(char)rand() % 256;
};
float							b, C, c, N, n, O, X, x, Y;
static int						randi(void)
{
	int		D = 0;
	char	d = 0;

	switch	(rdrandf)
	{
		case	1:
			_rdrand32_step((unsigned int *) & D);

			return	D;
		default:
			do
			{
				D |= (int)(unsigned char)randc() << (d * 8);

				d++;
			}
			while	(d <= 3);

			return	D;
	}
};
static float					randf(void)
{
	int		D, d;

	D		= randi();
	d		= randi();

	return	(float)D / (float)d;
};
__declspec(align(16)) int		e[4], F[4];
__m128d							G;
__m128d							g;
__m128d							H;
__m128d							h;
__m128d							Q;
__m128d							q;
__m128d							R;
__m128d							r;
__m128d							Aa;
__m128d							AB;
__m128d							Ab;
__m128d							AC;
__m128d							Ac;
__m128d							AD;
__m128d							AI;
__m128d							Ai;
__declspec(align(32)) long long	I[4];
__declspec(align(16)) double	j[2], K[2], k[2], t[2], U[2], u[2];
static long long				randll(void)
{
	long long	D = 0;
	char		d;

	switch		(rdrandf)
	{
		case	1:
			_rdrand64_step((unsigned long long *) & D);

			return	D;
		default:
			for (d = 0; d <= 1; d++)
			{
				D	|= (long long)(unsigned int)randi() << (d * 32);
			}

			return	D;
	}
};
static double					randd(void)
{
	long long	D, d;

	D			= randll();
	d			= randll();

	return		(double)D / (double)d;
};
__declspec(align(16)) long long	P[2], p[2], S[2];
__declspec(align(32)) char		Z[32], z[32], Ad[32];
__declspec(align(32)) double	AG[4], Ag[4], Ah[4];
__m256d							AH;

int							main()
{
	__cpuid(cpuInfo, 1);

	switch	(cpuInfo[2] & 1 << 30)
	{
		case	0:
			__cpuidex(cpuInfo, 7, 0);

			if	(cpuInfo[1] & 1 << 5)
			{
				avx2	= 1;
			}

			break;
		default:
			rdrandf = 1;
			avx2 = 1;

			break;
	}

	srand((unsigned int)time(0));
	
	A		= randc();
	a		= randc();
	B		= A * a;

	printf((char *)muli, A, a, B);

	b		= randf();
	C		= randf();
	c		= b * C;

	printf((char *)mulf, b, C, c);

	for		(E = 0; E <= 3; E++)
	{
		e[E]	= randi();
		F[E]	= randi();
	}
	while	(f <= 2)
	{
		G			= _mm_mul_pd(_mm_castps_pd(_mm_movelh_ps(_mm_castpd_ps(_mm_cvtsi32_sd(G, e[f])), _mm_castpd_ps(_mm_cvtsi32_sd(g, e[f + 1])))), _mm_castps_pd(_mm_movelh_ps(_mm_castpd_ps(_mm_cvtsi32_sd(H, F[f])), _mm_castpd_ps(_mm_cvtsi32_sd(h, F[f + 1])))));
		I[f]		= _mm_cvtsd_si64(G);
		I[f + 1]	= _mm_cvtsd_si64(_mm_castps_pd(_mm_movehl_ps(_mm_castpd_ps(g), _mm_castpd_ps(G))));
	
		f			+= 2;
	}
	l1:
	if		(i <= 3)
	{
		printf((char *)mullls, e[i], F[i], I[i]);
		
		i++;

		goto	l1;
	}

	printf((char *)line);

	do
	{
		j[J]	= randd();
		K[J]	= randd();

		J++;
	}
	while	(J <= 1);

	_mm_store_pd(k, _mm_mul_pd(_mm_load_pd(j), _mm_load_pd(K)));

	while	(L <= 1)
	{
		printf((char *)mulds, j[L], K[L], k[L]);
		
		L++;
	}

	printf((char *)line);

	l		= randc();
	l2:
	switch ((char)(!M))
	{
		case	1:
			M		= randc();

			goto	l2;
	}

	m		= l / M;

	printf((char *)divi, l, M, m);

	N		= randf();
	n		= randf();
	O		= N / n;

	printf((char *)divf, N, n, O);

	do
	{
		P[o]	= randll();
		
		for		(; !p[o];)
		{
			p[o]	= randll();
		}

		o++;
	}
	while	(o <= 1);

	Q		= _mm_div_pd(_mm_castps_pd(_mm_movelh_ps(_mm_castpd_ps(_mm_cvtsi64_sd(Q, P[0])), _mm_castpd_ps(_mm_cvtsi64_sd(q, P[1])))), _mm_castps_pd(_mm_movelh_ps(_mm_castpd_ps(_mm_cvtsi64_sd(R, p[0])), _mm_castpd_ps(_mm_cvtsi64_sd(r, p[1])))));
	S[0]	= _mm_cvtsd_si64(Q);
	S[1]	= _mm_cvtsd_si64(_mm_castps_pd(_mm_movehl_ps(_mm_castpd_ps(q), _mm_castpd_ps(Q))));

	while	(s <= 1)
	{
		printf((char *)divlls, P[s], p[s], S[s]);

		s++;
	}

	printf((char *)line);
	l3:
	if		(T <= 1)
	{
		t[T]	= randd();
		U[T]	= randd();

		T++;

		goto	l3;
	}

	_mm_store_pd(u, _mm_div_pd(_mm_load_pd(t), _mm_load_pd(U)));

	do
	{
		printf((char *)divds, t[V], U[V], u[V]);

		V++;
	}
	while	(V <= 1);

	printf((char *)line);

	v		= randc();
	for		(; !W;)
	{
		W	= randc();
	}

	w		= v % W;
	
	switch ((char)(w < 0 && W > 0 || w > 0 && W < 0))
	{
		case	1:
			w += W;
	}

	printf((char *)modfi, v, W, w);

	w		= v % W;

	printf((char *)modti, v, W, w);

	X		= randf();
	x		= randf();
	Y		= X - x * (float)floor(X / x);

	printf((char *)modfff, X, x, Y);

	Y		= (float)fmod(X, x);

	printf((char *)modtf, X, x, Y);

	while	(y <= 31)
	{
		Z[y] = randc();
		l4:
		if	(!z)
		{
			z[y] = randc();

			goto	l4;
		}

		y++;
	}
	do
	{
		Aa			= _mm_castps_pd(_mm_movelh_ps(_mm_castpd_ps(_mm_cvtsi32_sd(Aa, (int)Z[AA])), _mm_castpd_ps(_mm_cvtsi32_sd(AB, (int)Z[AA + 1]))));
		Ab			= _mm_castps_pd(_mm_movelh_ps(_mm_castpd_ps(_mm_cvtsi32_sd(Ab, (int)z[AA])), _mm_castpd_ps(_mm_cvtsi32_sd(AC, (int)z[AA + 1]))));
		AB			= Aa;
		AC			= Ab;
		Ac			= _mm_div_pd(Aa, Ab);
		AD			= _mm_sub_pd(Aa, _mm_mul_pd(_mm_round_pd(Ac, 1), Ab));
		Ad[AA]		= (char)_mm_cvtsd_si32(AC);
		Ad[AA + 1]	= (char)_mm_cvtsd_si32(_mm_castps_pd(_mm_movehl_ps(_mm_castpd_ps(AB), _mm_castpd_ps(AC))));

		AA			+= 2;
	}
	while	(AA <= 30);

	for		(AE = 0; AE <= 31; AE++)
	{
		printf((char *)modfis, Z[AE], z[AE], Ad[AE]);

		AE++;
	}

	printf((char *)line);

	while	(Ae <= 30)
	{
		AD			= _mm_sub_pd(Aa, _mm_mul_pd(_mm_round_pd(Ac, 3), Ab));
		Ad[Ae]		= (char)_mm_cvtsd_si32(AC);
		Ad[Ae + 1]	= (char)_mm_cvtsd_si32(_mm_castps_pd(_mm_movehl_ps(_mm_castpd_ps(AB), _mm_castpd_ps(AC))));

		Ae++;
	}
	l5:
	switch	((char)(AF <= 31))
	{
		case	1:
			printf((char *)modtis, Z[AF], z[AF], Ad[AF]);

			AF++;

			goto	l5;
	}

	printf((char *)line);

	do
	{
		AG[Af] = randd();
		Ag[Af] = randd();

		Af++;
	}
	while	(Af <= 3);

	if		(avx2)
	{
		AH	= _mm256_div_pd(_mm256_load_pd(AG), _mm256_load_pd(Ag));

		_mm256_store_pd(Ah, _mm256_sub_pd(_mm256_load_pd(AG), _mm256_mul_pd(_mm256_floor_pd(AH), _mm256_load_pd(Ag))));
	}
	else
	{
		AI	= _mm_div_pd(_mm_load_pd(AG), _mm_load_pd(Ag));
		Ai	= _mm_div_pd(_mm_load_pd(AG + 2), _mm_load_pd(Ag + 2));

		_mm_store_pd(Ah, _mm_sub_pd(_mm_load_pd(AG), _mm_mul_pd(_mm_floor_pd(AI), _mm_load_pd(Ag))));
		_mm_store_pd((Ah + 2), _mm_sub_pd(_mm_load_pd(AG + 2), _mm_mul_pd(_mm_floor_pd(Ai), _mm_load_pd(Ag + 2))));
	}

	for		(AJ = 0; AJ <= 3; AJ++)
	{
		printf((char *)modfds, AG[AJ], Ag[AJ], Ah[AJ]);
	}

	printf((char *)line);

	switch	(avx2)
	{
		case	1:
			_mm256_store_pd(Ah, _mm256_sub_pd(_mm256_load_pd(AG), _mm256_mul_pd(_mm256_trunc_pd(AH), _mm256_load_pd(Ag))));

			break;
		default:
			_mm_store_pd(Ah, _mm_sub_pd(_mm_load_pd(AG), _mm_mul_pd(_mm_trunc_pd(AI), _mm_load_pd(Ag))));
			_mm_store_pd((Ah + 2), _mm_sub_pd(_mm_load_pd(AG + 2), _mm_mul_pd(_mm_trunc_pd(Ai), _mm_load_pd(Ag + 2))));

			break;
	}

	while (Aj <= 3)
	{
		printf((char *)modtds, AG[AJ], Ag[AJ], Ah[AJ]);

		Aj++;
	}

	printf((char *)line);

	ExitProcess(0);
}