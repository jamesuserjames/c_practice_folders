#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_compare_bytes(const void *a, const void *b, size_t n)
{
	
}

/*
GOAL:
Compare byte sequences lexicographically.

TODO:
1. Compare unsigned bytes; return first difference; stop at n.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	unsigned char	a[3] = {1, 2, 3};
	unsigned char	b[3] = {1, 2, 4};

	printf("Test 1: %d\n", ft_compare_bytes(a, b, 3) < 0);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_compare_bytes represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
