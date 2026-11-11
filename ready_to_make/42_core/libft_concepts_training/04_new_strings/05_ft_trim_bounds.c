#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_trim_bounds(const char *s, const char *set, size_t *start, size_t *end)
{
	
}

/*
GOAL:
Find [start, end) bounds after trimming characters in set from both ends.

TODO:
1. Move start forward while chars are in set.
2. Move end backward while chars are in set.
3. Do not underflow on empty strings.

EXPECTED OUTPUT:
Test 1: 2 7
*/

int	main(void)
{
	size_t	a = 0, b = 0;

	ft_trim_bounds("..hello...",".", &a, &b);
	printf("Test 1: %zu %zu\n", a, b);
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_trim_bounds represent?
2. Why does this task require: move start forward while chars are in set?
3. Which boundary condition could change the result?
4. How does ft_trim_bounds support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
