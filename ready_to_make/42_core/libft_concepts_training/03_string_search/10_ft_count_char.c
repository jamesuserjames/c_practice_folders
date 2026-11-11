#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

size_t	ft_count_char(const char *s, char c)
{
	
}

/*
GOAL:
Count occurrences of a character in a string.

TODO:
1. Traverse until NUL; count matching characters.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 3
*/

int	main(void)
{
	printf("Test 1: %zu\n", ft_count_char("banana", 'a'));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_count_char represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
