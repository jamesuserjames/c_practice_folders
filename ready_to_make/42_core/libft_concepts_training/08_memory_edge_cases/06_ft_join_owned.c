#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_join_owned(const char *a, const char *b)
{
	
}

/*
GOAL:
Join two strings in one owned allocation without leaking.

TODO:
1. Measure lengths safely.
2. Check for length addition overflow.
3. Allocate once, copy both strings, terminate.

EXPECTED OUTPUT:
Test 1: hello!
*/

int	main(void)
{
	char	*s = ft_join_owned("hello", "!");

	if (!s)return (1);
	printf("Test 1: %s\n", s);
	free(s);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_join_owned represent?
2. Why does this task require: measure lengths safely?
3. Which boundary condition could change the result?
4. How does ft_join_owned support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
