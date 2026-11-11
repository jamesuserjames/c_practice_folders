#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	ft_reverse_bytes(unsigned char *a, size_t n)
{
	
}

/*
GOAL:
Reverse bytes in place.

TODO:
1. Swap symmetric bytes from ends toward center.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 4 3 2 1
*/

int	main(void)
{
	unsigned char	a[4] = {1, 2, 3, 4};

	ft_reverse_bytes(a, 4);
	printf("Test 1: %u %u %u %u\n", a[0], a[1], a[2], a[3]);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_reverse_bytes represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
