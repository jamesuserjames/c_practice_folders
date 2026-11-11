#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_copy_word(const char *start, size_t len)
{
	
}

/*
GOAL:
Allocate and copy one word of exactly len characters.

TODO:
1. Allocate len + 1.
2. Copy len bytes.
3. Add NUL.

EXPECTED OUTPUT:
Test 1: cde
*/

int	main(void)
{
	char	*s = ft_copy_word("abcdef"+2, 3);

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_copy_word represent?
2. Why does this task require: allocate len + 1?
3. Which boundary condition could change the result?
4. How does ft_copy_word support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
