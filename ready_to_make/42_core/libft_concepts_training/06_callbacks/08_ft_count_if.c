#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

size_t	ft_count_if(const int *a, size_t n, int (*pred)(int))
{
	
}

/*
GOAL:
Count array elements for which predicate is nonzero.

TODO:
1. Inspect each element; call predicate; accumulate count.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 2
*/

static int	test_double(int n)
{
	return (n * 2);
}

static int	test_even(int n)
{
	return (n % 2 == 0);
}

static int	test_add(int a, int b)
{
	return (a + b);
}

int	main(void)
{
	int	a[4] = {1, 2, 3, 4};

	printf("Test 1: %zu\n", ft_count_if(a, 4, test_even));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_count_if represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
