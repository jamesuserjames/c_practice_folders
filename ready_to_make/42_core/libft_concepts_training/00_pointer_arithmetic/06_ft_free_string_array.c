#include <stdlib.h>
#include <stdio.h>

void	ft_free_string_array(char **words)
{
	
}

/*
GOAL:
Free a NULL-terminated heap array of heap - allocated strings.

TODO:
1. Return immediately if words is NULL.
2. Free each string until the NULL terminator.
3. Free the outer array.

EXPECTED OUTPUT:
Test 1: freed
*/

int	main(void)
{
	char	**a;

	a = malloc(3 * sizeof(*a));
	if (a == NULL)
		return (1);
	a[0] = malloc(4);
	a[1] = malloc(4);
	a[2] = NULL;
	if (a[0] == NULL || a[1] == NULL)
		return (free(a[0]), free(a[1]), free(a), 1);
	ft_free_string_array(a);
	printf("Test 1: freed\n");
	return (0);
}

/*
EDGE CASES:
Accept NULL input. Each non - NULL element and the outer array
must have been dynamically allocated and not already freed.

LEARNING CHECK:
1. Why do you free inner strings before the outer array?
2. How does the loop know when to stop?
3. Can you use words after freeing it?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
