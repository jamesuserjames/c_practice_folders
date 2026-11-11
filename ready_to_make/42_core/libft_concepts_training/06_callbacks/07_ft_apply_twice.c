#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_apply_twice(int x, int (*f)(int))
{
	
}

/*
GOAL:
Call an integer transformation twice.

TODO:
1. Call f on x; pass its result to f; return final result.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 12
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
	printf("Test 1: %d\n", ft_apply_twice(3, test_double));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_apply_twice represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
