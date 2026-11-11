#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	*ft_safe_realloc_copy(const void *src, size_t old_size, size_t new_size)
{
	
}

/*
GOAL:
Allocate new buffer and copy min(old_size, new_size) bytes.

TODO:
1. Check new allocation; copy safely; do not free src.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: abc
*/

int	main(void)
{
	char	a[4] = "abc";
	char	*b = ft_safe_realloc_copy(a, 4, 8);

	if (b)
	{
		printf("Test 1: %s\n", b);
		free(b);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_safe_realloc_copy represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
