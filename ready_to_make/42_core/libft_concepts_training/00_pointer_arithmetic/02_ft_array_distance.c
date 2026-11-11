#include <stdio.h>

int	ft_array_distance(const int *start, const int *end)
{
	
}

/*
GOAL:
Calculate the signed distance between two array positions.

TODO:
1. Subtract start from end.
2. Return the distance in elements.

EXPECTED OUTPUT:
Test 1: 4
Test 2: -2
Test 3: 0
*/

int	main(void)
{
	int	a[] = {3, 5, 7, 9, 11};

	printf("Test 1: %d\n", ft_array_distance(&a[0], &a[4]));

	printf("Test 2: %d\n", ft_array_distance(&a[3], &a[1]));
	printf("Test 3: %d\n", ft_array_distance(&a[2], &a[2]));
	return (0);
}

/*
EDGE CASES:
Both pointers must refer to the same array (or one past it).
For this exercise, assume the element distance fits in int.

LEARNING CHECK:
1. Why is the distance measured in elements, not bytes?
2. How can the result become negative?
3. Why can you not subtract pointers to unrelated arrays?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
