#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	ft_cleanup_partial_vector(char **words, size_t created)
{
	
}

/*
GOAL:
Free exactly created owned strings and their array.

TODO:
1. Free only initialized elements; then the outer array.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: cleaned
*/

int	main(void)
{
	char **v = calloc(2, sizeof(char *));

	if (!v)
		return (1);
	v[0] = malloc(3);
	if (!v[0])
	{
		free(v);
		return (1);
	}
	ft_cleanup_partial_vector(v, 1);
	printf("Test 1: cleaned\n");
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_cleanup_partial_vector represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
