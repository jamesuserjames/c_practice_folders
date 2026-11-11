#include <stddef.h>
#include <stdio.h>

int	ft_pointer_to_last(const int *arr, size_t size)
{
	
}

/*
GOAL:
Read the final element of an array using pointer arithmetic.

TODO:
1. Return 0 when size is 0 or arr is NULL.
2. Move to the element at index size - 1.
3. Dereference and return its value.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 0
*/

int	main(void)
{
	int	a[] = {4, 5, 6};

	printf("Test 1: %d\n", ft_pointer_to_last(a, 3));

	printf("Test 2: %d\n", ft_pointer_to_last(a, 0));
	return (0);
}

/*
EDGE CASES:
Return 0 for empty or NULL input. Otherwise, size must not
exceed the number of accessible array elements.

LEARNING CHECK:
1. Why do we use size - 1 rather than size?
2. What happens if size is zero and we subtract 1?
3. Is the array modified?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
