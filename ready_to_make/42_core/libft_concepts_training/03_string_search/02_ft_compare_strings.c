#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_compare_strings(const char *a, const char *b)
{
	
}

/*
GOAL:
Compare strings lexicographically.

TODO:
1. Compare bytes as unsigned char.
2. Stop at the first difference or NUL.
3. Return negative, zero, or positive.

EXPECTED OUTPUT:
0
1
1
*/

int	main(void)
{
	printf("%d\n", ft_compare_strings("abc", "abc"));
	printf("%d\n", ft_compare_strings("abc", "abd")<0);
	printf("%d\n", ft_compare_strings("abd", "abc")>0);
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_compare_strings represent?
2. Why does this task require: compare bytes as unsigned char?
3. Which boundary condition could change the result?
4. How does ft_compare_strings support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
