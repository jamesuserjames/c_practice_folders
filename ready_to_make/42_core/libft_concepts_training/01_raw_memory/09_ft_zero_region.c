#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	ft_clear_region(void *dst, size_t n)
{
	
}

/*
GOAL:
Zero exactly n bytes of an object.

TODO:
1. Cast to unsigned char; zero each byte; stop at n.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 0 0 0
*/

int	main(void)
{
	unsigned char	a[3] = {1, 2, 3};

	ft_clear_region(a, 3);
	printf("Test 1: %u %u %u\n", a[0], a[1], a[2]);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_zero_region represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
