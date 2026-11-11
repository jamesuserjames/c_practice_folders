#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_compare_n_chars(const char *a, const char *b, size_t n)
{
	
}

/*
GOAL:
Compare at most n characters of two strings.

TODO:
1. Return zero when n is zero.
2. Compare as unsigned char.
3. Stop on difference or NUL.

EXPECTED OUTPUT:
0
1
0
*/

int	main(void)
{
	printf("%d\n", ft_compare_n_chars("abc", "abd", 2));
	printf("%d\n", ft_compare_n_chars("abc", "abd", 3)<0);
	printf("%d\n", ft_compare_n_chars("a", "z", 0));
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_compare_n_chars represent?
2. Why does this task require: return zero when n is zero?
3. Which boundary condition could change the result?
4. How does ft_compare_n_chars support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
