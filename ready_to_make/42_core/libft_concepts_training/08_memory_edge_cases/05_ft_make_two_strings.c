#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char **ft_make_two_strings(const char	*a, const char *b)
{
	
}

/*
GOAL:
Allocate a two - string array and clean up on partial failure.

TODO:
1. Allocate a three-pointer array.
2. Duplicate both strings separately.
3. If any allocation fails, free earlier allocations and return NULL.

EXPECTED OUTPUT:
Test 1: cat dog 1
*/

int	main(void)
{
	char **p = ft_make_two_strings("cat", "dog");

	if (!p)return (1);
	printf("Test 1: %s %s %d\n", p[0], p[1], p[2] == NULL);
	free(p[0]);
	free(p[1]);
	free(p);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_make_two_strings represent?
2. Why does this task require: allocate a three-pointer array?
3. Which boundary condition could change the result?
4. How does ft_make_two_strings support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
