#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_map_indexed(const char *s, char (*f)(unsigned int, char))
{
	
}

/*
GOAL:
Create a new string where each character depends on its index.

TODO:
1. Allocate.
2. Call f(i,s[i]).
3. NUL-terminate and return.

EXPECTED OUTPUT:
Test 1: abcd
*/

static char test_index_char(unsigned int i, char c)
{
	return (char)(c + i);
}

int	main(void)
{
	char	*r = ft_map_indexed("aaaa", test_index_char);

	if (r)
	{
		printf("Test 1: %s\n", r);
		free(r);
	}
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_map_indexed represent?
2. Why does this task require: allocate?
3. Which boundary condition could change the result?
4. How does ft_map_indexed support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
