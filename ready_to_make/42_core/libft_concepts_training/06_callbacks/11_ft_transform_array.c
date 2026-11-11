#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	*ft_transform_array(const int	*a, size_t	n, int (*f)(int))
{
	
}

/*
GOAL:
Allocate an array of callback - transformed values.

TODO:
1. Allocate n integers; apply callback for each element.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 2 4 6
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
	int	a[3] = {1, 2, 3};
	int	*b = ft_transform_array(a, 3, test_double);

	if (b)
	{
		printf("Test 1: %d %d %d\n", b[0], b[1], b[2]);
		free(b);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_transform_array represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
