#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

unsigned int	ft_byte_checksum(const void *src, size_t n)
{
	
}

/*
GOAL:
Compute the sum of bytes modulo UINT_MAX + 1.

TODO:
1. Read unsigned bytes; accumulate into unsigned int.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 6
*/

int	main(void)
{
	unsigned char	a[3] = {1, 2, 3};

	printf("Test 1: %u\n", ft_byte_checksum(a, 3));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_byte_checksum represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
