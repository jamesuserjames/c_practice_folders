#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	*ft_set_bytes(void *dst, unsigned char byte, size_t n)
{
	
}

/*
GOAL:
Fill n bytes with the supplied byte.

TODO:
1. Treat memory as unsigned char; write n bytes; return dst.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: AAAA
*/

int	main(void)
{
	unsigned char	a[4] = {0};

	ft_set_bytes(a, 0x41, 4);
	printf("Test 1: %c%c%c%c\n", a[0], a[1], a[2], a[3]);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_set_bytes represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
