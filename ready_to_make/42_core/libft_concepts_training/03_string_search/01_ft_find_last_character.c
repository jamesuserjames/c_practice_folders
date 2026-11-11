#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_find_last_character(const char *str, int c)
{
	
}

/*
GOAL:
Find the last matching character in a string.

TODO:
1. Track the most recent matching address.
2. Include the NUL byte as a possible match.

EXPECTED OUTPUT:
a
1
*/

int	main(void)
{
	char	s[] = "banana";
	char	*p = ft_find_last_character(s, 'a');

	printf("%s\n", p?p:"missing");
	printf("%d\n", ft_find_last_character(s, 'z') == NULL);
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_find_last_character represent?
2. Why does this task require: track the most recent matching address?
3. Which boundary condition could change the result?
4. How does ft_find_last_character support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
