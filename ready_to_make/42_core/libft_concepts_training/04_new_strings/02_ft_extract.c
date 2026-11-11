#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_extract(const char *s, unsigned int start, size_t len)
{
	
}

/*
GOAL:
Allocate a new substring.

TODO:
1. Determine the actual copy length.
2. Allocate length + 1.
3. Copy and terminate.

EXPECTED OUTPUT:
Test 1: cde
*/

int	main(void)
{
	char	*s = ft_extract("abcdef", 2, 3);

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_extract represent?
2. Why does this task require: determine the actual copy length?
3. Which boundary condition could change the result?
4. How does ft_extract support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
