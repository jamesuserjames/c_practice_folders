#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_zero_bytes(void *ptr, size_t n)
{
	
}

/*
GOAL:
Set exactly n bytes to zero.

TODO:
1. Cast void * to unsigned char *.
2. Walk through the n bytes.
3. Assign 0 to each byte.

EXPECTED OUTPUT:
Test 1: 0 0 0 6
*/

int	main(void)
{
	unsigned char	a[4] =
	{
		9, 8, 7, 6
	};
	ft_zero_bytes(a, 3);
	printf("Test 1: %u %u %u %u\n", a[0], a[1], a[2], a[3]);
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_zero_bytes represent?
2. Why does this task require: cast void * to unsigned char *?
3. Which boundary condition could change the result?
4. How does ft_zero_bytes support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
