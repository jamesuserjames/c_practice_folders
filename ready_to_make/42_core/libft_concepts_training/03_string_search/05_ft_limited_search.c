#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_limited_search(const char *haystack, const char *needle, size_t len)
{
	
}

/*
GOAL:
Find needle only if its entire match fits within len bytes.

TODO:
1. Return haystack when needle is empty.
2. Never read beyond len bytes of haystack.
3. Reject partial matches that cross the limit.

EXPECTED OUTPUT:
1
cde
*/

int	main(void)
{
	char	s[] = "abcde";

	printf("%d\n", ft_limited_search(s, "cd", 3) == NULL);
	char	*p = ft_limited_search(s, "cd", 4);

	printf("%s\n", p?p:"missing");
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_limited_search represent?
2. Why does this task require: return haystack when needle is empty?
3. Which boundary condition could change the result?
4. How does ft_limited_search support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
