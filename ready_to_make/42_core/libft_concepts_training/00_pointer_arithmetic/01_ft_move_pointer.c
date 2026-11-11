#include <stdio.h>

int	*ft_move_pointer(int *ptr, int steps)
{
	
}

/*
GOAL:
Move a pointer by a signed number of array elements.

TODO:
1. Use pointer arithmetic with steps.
2. Return the resulting pointer.

EXPECTED OUTPUT:
Test 1: 30
Test 2: 20
*/

int	main(void)
{
	int	a[] = {10, 20, 30, 40, 50};

	printf("Test 1: %d\n", *ft_move_pointer(a, 2));

	printf("Test 2: %d\n", *ft_move_pointer(a + 4, -3));
	return (0);
}

/*
EDGE CASES:
The resulting pointer must remain in the same array or one past it.
Only dereference pointers that point to actual elements.

LEARNING CHECK:
1. Does adding 1 move by one byte or one int?
2. What does a negative step do?
3. When can you safely dereference the returned pointer?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
