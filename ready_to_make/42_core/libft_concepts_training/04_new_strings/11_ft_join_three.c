#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_join_three(const char *a, const char *b, const char *c)
{
	
}

/*
GOAL:
Allocate concatenation of three strings.

TODO:
1. Compute lengths; check size; concatenate and terminate.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: abc
*/

int	main(void)
{
	char	*s = ft_join_three("a", "b", "c");

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
1. What does each parameter in ft_join_three represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
