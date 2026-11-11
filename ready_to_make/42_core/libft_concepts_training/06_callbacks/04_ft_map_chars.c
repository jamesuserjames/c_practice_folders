#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_map_chars(const char *s, char (*f)(char))
{
	
}

/*
GOAL:
Allocate a new string containing transformed characters.

TODO:
1. Allocate source length + 1.
2. Call callback on each source character.
3. Keep source unchanged.

EXPECTED OUTPUT:
Test 1: abc ABC
*/

static char test_upper(char c)
{
	return (c >= 'a' && c <= 'z') ? c - 32 : c;
}

int	main(void)
{
	char	s[] = "abc";
	char	*r = ft_map_chars(s, test_upper);

	if (r)
	{
		printf("Test 1: %s %s\n", s, r);
		free(r);
	}
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_map_chars represent?
2. Why does this task require: allocate source length + 1?
3. Which boundary condition could change the result?
4. How does ft_map_chars support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
