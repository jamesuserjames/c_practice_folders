#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_join_two(const char *a, const char *b)
{
	
}

/*
GOAL:
Allocate a string containing a followed by b.

TODO:
1. Measure both lengths.
2. Allocate combined length + 1.
3. Copy a, then b, then NUL.

EXPECTED OUTPUT:
Test 1: goodbye
*/

int	main(void)
{
	char	*s = ft_join_two("good", "bye");

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
1. What do the parameters of ft_join_two represent?
2. Why does this task require: measure both lengths?
3. Which boundary condition could change the result?
4. How does ft_join_two support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
