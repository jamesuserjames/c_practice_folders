#include <stdio.h>

int	ft_pointer_to_first(const int *arr)
{
	
}

/*
GOAL:
Return the first integer through an array pointer.

TODO:
1. Dereference the first element.
2. Return its value without changing the array.

EXPECTED OUTPUT:
Test 1: 4
*/

int	main(void)
{
	int	a[] = {4, 5, 6};

	printf("Test 1: %d\n", ft_pointer_to_first(a));
	return (0);
}

/*
EDGE CASES:
arr must point to an existing integer; an empty array is invalid.

LEARNING CHECK:
1. Why can arr be used like a pointer?
2. Is arr[0] equivalent to *arr?
3. Does this function allocate memory?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
