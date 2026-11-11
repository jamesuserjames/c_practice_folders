#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_count_chars(const char *s)
{
	
}

/*
GOAL:
Count characters without counting the terminating NUL.

TODO:
1. Start at 0.
2. Advance until NUL.
3. Return count.

EXPECTED OUTPUT:
Test 1: 5 0
*/

int	main(void)
{
	printf("Test 1: %zu %zu\n", ft_count_chars("hello"), ft_count_chars(""));
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_count_chars represent?
2. Why does this task require: start at 0?
3. Which boundary condition could change the result?
4. How does ft_count_chars support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
