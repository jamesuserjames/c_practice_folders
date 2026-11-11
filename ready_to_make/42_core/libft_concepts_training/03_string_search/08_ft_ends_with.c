#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_ends_with(const char *s, const char *suffix)
{
	
}

/*
GOAL:
Return 1 when s ends with suffix.

TODO:
1. Measure lengths; align suffix; compare.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_ends_with("hello", "lo"));

	printf("Test 2: %d\n", ft_ends_with("hello", "he"));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_ends_with represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
