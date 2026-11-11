#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_find_character(const char *str, int c)
{
	
}

/*
GOAL:
Find the first matching character in a NUL - terminated string.

TODO:
1. Walk through str until the terminator.
2. Return a pointer to the first match.
3. Allow searching for the terminating NUL.

EXPECTED OUTPUT:
nana
1
*/

int	main(void)
{
	char	s[] = "banana";
	char	*p = ft_find_character(s, 'n');

	printf("%s\n", p?p:"missing");
	printf("%d\n", ft_find_character(s, 'z') == NULL);
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_find_character represent?
2. Why does this task require: walk through str until the terminator?
3. Which boundary condition could change the result?
4. How does ft_find_character support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
