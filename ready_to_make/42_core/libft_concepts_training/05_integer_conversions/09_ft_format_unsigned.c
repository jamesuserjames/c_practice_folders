#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_format_unsigned(unsigned int n)
{
	
}

/*
GOAL:
Allocate a decimal string for an unsigned integer.

TODO:
1. Count decimal digits; allocate; fill digits backward.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 429
*/

int	main(void)
{
	char	*s = ft_format_unsigned(429U);

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_format_unsigned represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
