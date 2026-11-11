#include <stdio.h>

int	ft_read_pointer(const int *ptr)
{
	
}

/*
GOAL:
Read an integer through a pointer.

TODO:
1. Dereference ptr.
2. Return its value without changing it.

EXPECTED OUTPUT:
Test 1: 42
*/

int	main(void)
{
	int	n = 42;

	printf("Test 1: %d\n", ft_read_pointer(&n));
	return (0);
}

/*
EDGE CASES:
ptr must point to a valid int. Do not dereference NULL.

LEARNING CHECK:
1. What does *ptr mean?
2. Does reading through ptr change n?
3. Who owns the integer?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
