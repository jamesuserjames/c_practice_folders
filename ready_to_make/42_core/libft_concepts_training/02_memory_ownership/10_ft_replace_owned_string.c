#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_replace_owned_string(char **dst, const char *src)
{
	
}

/*
GOAL:
Replace an owned string with a newly allocated copy.

TODO:
1. Allocate before freeing old string; report allocation failure.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: new
*/

int	main(void)
{
	char	*s = malloc(4);

	if (!s)
		return (1);
	memcpy(s, "old", 4);
	if (ft_replace_owned_string(&s, "new") == 0)
		printf("Test 1: %s\n", s);
	free(s);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_replace_owned_string represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
