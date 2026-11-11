#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	*ft_copy_bytes(void *dst, const void *src, size_t n)
{
	
}

/*
GOAL:
Copy bytes between non - overlapping regions.

TODO:
1. Copy exactly n unsigned bytes; return destination.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: abcd
*/

int	main(void)
{
	char	a[5] = {0};

	ft_copy_bytes(a, "abcd", 5);
	printf("Test 1: %s\n", a);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_copy_bytes represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
