#include <stdio.h>
#include <xmmintrin.h>
#include <intrin.h>
#include <Windows.h>

__int8				A = -128;					// equ 128
char				a = 127;					// equ -129
unsigned __int8		B = 255;					// equ -1 or 511
unsigned char		b = 128;					// equ -128 or 384
__int16				C = -32768;					// equ 32768
short				c = 32767;					// equ -32769
short int			D = -129;					// equ 65407
signed short int	d = 128;					// equ -65408
unsigned __int16	E = 65535;					// equ -1 or 131071
unsigned short		e = 32768;					// equ -32768 or 98304
__int32				F = -2147483648ll;			// equ 2147483648
int					f = 2147483647;				// equ -2147483649ll
unsigned __int32	G = 4294967295;				// equ -1 or 8589934591
unsigned int		g = 2147483648;				// equ -2147483648ll or 6442450944
long				H = -2147483648ll;			// equ 2147483648
long int			h = 2147483647;				// equ -2147483649ll
unsigned long		I = 4294967295;				// equ -1 or 8589934591
unsigned long int	i = 2147483648;				// equ -2147483648ll or 6442450944
__int64				J = -9223372036854775808ll;	// equ 9223372036854775808
long long			j = 9223372036854775807;	// equ -9223372036854775809ll
unsigned __int64	K = 18446744073709551615;	// equ -1
unsigned long long	k = 9223372036854775808;	// equ -9223372036854775808ll
float				L = 0.999999f;
double				l = 0.999999999999999;
char				* __ptr64 M;
char				m [16] = {0b1001000, 0b1100101, 0b1101100, 0b1101100, 0b1101111, 0b101100, 0b100000, 0b1010111, 0b1101111, 0b1110010, 0b1101100, 0b1100100, 0b100001, 0b1010, 0b0, 0b0};
struct				N
{
	long long	n;
	int			O;
	short		o [2];
	char		* P;
};
struct				N p;
union				Q
{
	long long	q[2];
	char		R[16];
};
union				Q r;
enum				S{s = 1, T = 1, t};
static void			U()
{
	printf("Hello, World!\n");
}
__m128i				u;
__m128i				* V = & u;

int					main()
{
	printf("%d\n", A);
	printf("%d\n", a);
	printf("%u\n", B);
	printf("%u\n", b);
	printf("%d\n", C);
	printf("%d\n", c);
	printf("%d\n", D);
	printf("%d\n", d);
	printf("%u\n", E);
	printf("%u\n", e);
	printf("%d\n", F);
	printf("%d\n", f);
	printf("%u\n", G);
	printf("%u\n", g);
	printf("%d\n", H);
	printf("%d\n", h);
	printf("%u\n", I);
	printf("%u\n", i);
	printf("%lld\n", J);
	printf("%lld\n", j);
	printf("%llu\n", K);
	printf("%llu\n", k);
	printf("%f\n", L);
	printf("%.15f\n", l);

	M = & M;

	printf("%p\n", M);
	printf("%s", m);

	p.n		= 0534401306755433062510;
	p.O		= 014433071157;
	p.o[0]	= 05041;
	p.o[1]	= 00;

	p.P		= (char *)& p;

	printf("%s", p.P);

	r.R[0]	= 0x48;
	r.R[1]	= 0x65;
	r.R[2]	= 0x6c;
	r.R[3]	= 0x6c;
	r.R[4]	= 0x6f;
	r.R[5]	= 0x2c;
	r.R[6]	= 0x20;
	r.R[7]	= 0x57;
	r.R[8]	= 0x6f;
	r.R[9]	= 0x72;
	r.R[10]	= 0x6c;
	r.R[11]	= 0x64;
	r.R[12]	= 0x21;
	r.R[13]	= 0xa;
	r.R[14] = 0x0;
	r.R[14] = 0x0;

	printf("%s", (char *)r.q);
	printf("%d %d %d\n", s, T, t);
	U();
	u		= _mm_setr_epi8('H', 'e', 'l', 'l', 'o', ',', ' ', 'W', 'o', 'r', 'l', 'd', '!', '\n', '\0', '\0');
	printf("%s", (char *)V);

	ExitProcess(0);
}