#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_make_trimmed(const char *s, const char *set)
{
	
}

/*
GOAL:
Create an allocated copy without characters in set at either end.

TODO:
1. Find trimmed start/end.
2. Allocate exact space.
3. Copy and terminate.

EXPECTED OUTPUT:
Test 1: hello
*/

int	main(void)
{
	char	*s = ft_make_trimmed("--hello--", "-");

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
1. What do the parameters of ft_make_trimmed represent?
2. Why does this task require: find trimmed start/end?
3. Which boundary condition could change the result?
4. How does ft_make_trimmed support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
