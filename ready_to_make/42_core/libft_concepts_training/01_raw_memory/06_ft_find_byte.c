#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	*ft_find_byte(const void *src, unsigned char byte, size_t n)
{
	
}

/*
GOAL:
Find a byte within a bounded memory region.

TODO:
1. Inspect bytes; return matching address or NULL.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char	s[] = "abcd";

	printf("Test 1: %d\n", ft_find_byte(s, 'c', 4) == s + 2);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_find_byte represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
