#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	ft_free_string_vector(char ***strings)
{
	
}

/*
GOAL:
Free a NULL-terminated owned string vector and clear pointer.

TODO:
1. Free each word; free vector; set caller pointer to NULL.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char **v = malloc(2 * sizeof(char *));

	if (!v)
		return (1);
	v[0] = malloc(3);
	v[1] = NULL;
	if (!v[0])
	{
		free(v);
		return (1);
	}
	memcpy(v[0], "hi", 3);
	ft_free_string_vector(&v);
	printf("Test 1: %d\n", v == NULL);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_free_string_vector represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
