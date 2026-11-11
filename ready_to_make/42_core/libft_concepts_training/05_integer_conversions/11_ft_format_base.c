#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_format_base(unsigned int n, const char *digits)
{
	
}

/*
GOAL:
Convert unsigned integer using a valid base alphabet (2–16 chars).

TODO:
1. Determine base length; repeatedly divide; allocate string.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1010
*/

int	main(void)
{
	char	*s = ft_format_base(10U, "01");

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
1. What does each parameter in ft_format_base represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
