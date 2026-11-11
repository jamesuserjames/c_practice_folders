#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_count_occurrences(const char *str, const char *needle)
{
	
}

/*
GOAL:
Count non - overlapping occurrences of a nonempty substring.

TODO:
1. Search from the current position.
2. When found, increase count and advance by needle length.
3. Return zero when needle is empty.

EXPECTED OUTPUT:
2
2
*/

int	main(void)
{
	printf("%zu\n", ft_count_occurrences("aaaa", "aa"));
	printf("%zu\n", ft_count_occurrences("banana", "na"));
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_count_occurrences represent?
2. Why does this task require: search from the current position?
3. Which boundary condition could change the result?
4. How does ft_count_occurrences support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
