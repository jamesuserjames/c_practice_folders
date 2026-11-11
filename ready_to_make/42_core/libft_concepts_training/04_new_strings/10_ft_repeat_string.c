#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_repeat_string(const char *s, size_t times)
{
	
}

/*
GOAL:
Allocate and concatenate a string repeated times.

TODO:
1. Check product overflow; allocate NUL; copy blocks.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: ababab
*/

int	main(void)
{
	char	*s = ft_repeat_string("ab", 3);

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
1. What does each parameter in ft_repeat_string represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
