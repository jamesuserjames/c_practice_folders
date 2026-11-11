#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

unsigned int	ft_parse_unsigned(const char *s)
{
	
}

/*
GOAL:
Parse ASCII decimal digits into unsigned int.

TODO:
1. Stop at first non-digit; accumulate within the documented range.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 123
*/

int	main(void)
{
	printf("Test 1: %u\n", ft_parse_unsigned("123x"));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_parse_unsigned represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
