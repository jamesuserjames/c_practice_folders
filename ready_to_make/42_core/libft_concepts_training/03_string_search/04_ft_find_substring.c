#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_find_substring(const char *haystack, const char *needle)
{
	
}

/*
GOAL:
Find the first occurrence of needle in haystack.

TODO:
1. Try each candidate position.
2. Compare successive characters of needle.
3. Return haystack for an empty needle.

EXPECTED OUTPUT:
two three
1
*/

int	main(void)
{
	char	s[] = "one two three";
	char	*p = ft_find_substring(s, "two");

	printf("%s\n", p?p:"missing");
	printf("%d\n", ft_find_substring(s, "xyz") == NULL);
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_find_substring represent?
2. Why does this task require: try each candidate position?
3. Which boundary condition could change the result?
4. How does ft_find_substring support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
