#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	*ft_allocate_int_copy(const int	*src, size_t n)
{
	
}

/*
GOAL:
Allocate and copy n integers.

TODO:
1. Check allocation size; copy elements; return owned array.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1 2 3
*/

int	main(void)
{
	int	a[3] = {1, 2, 3};
	int	*p = ft_allocate_int_copy(a, 3);

	if (p)
	{
		printf("Test 1: %d %d %d\n", p[0], p[1], p[2]);
		free(p);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_allocate_copy represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
