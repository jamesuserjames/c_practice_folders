#include <stdio.h>

void	ft_swap_pointees(int *a, int *b)
{
	
}

/*
GOAL:
Swap the integer values referenced by two pointers.

TODO:
1. Save the first value in a temporary integer.
2. Copy the second value into the first.
3. Copy the saved value into the second.

EXPECTED OUTPUT:
Test 1: 7 3
*/

int	main(void)
{
	int	a = 3;
	int	b = 7;

	ft_swap_pointees(&a, &b);
	printf("Test 1: %d %d\n", a, b);
	return (0);
}

/*
EDGE CASES:
Both pointers must be valid. Swapping a value with itself is safe.

LEARNING CHECK:
1. Why is a temporary variable useful?
2. Are the pointers themselves swapped?
3. What happens when a and b point to the same integer?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
