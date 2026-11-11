#include <stdio.h>

void	ft_reverse_ints(int *begin, int *end)
{
	
}

/*
GOAL:
Reverse an integer array using pointer arithmetic.

TODO:
1. Treat end as one past the last element.
2. Swap the elements at the two ends.
3. Move the pointers toward each other until they meet.

EXPECTED OUTPUT:
Test 1: 4 3 2 1
*/

int	main(void)
{
	int	a[] = {1, 2, 3, 4};
	int	i;

	i = 0;
	ft_reverse_ints(a, a + 4);
	printf("Test 1: ");
	while (i < 4)
	{
		printf("%d", a[i]);
		if (i < 3)
			printf(" ");
		i++;
	}
	printf("\n");
	return (0);
}

/*
EDGE CASES:
The range [begin, end) must belong to the same array.
Handle empty and single - element ranges without dereferencing end.

LEARNING CHECK:
1. Why is end one past the final element?
2. When should the swapping stop?
3. Is extra array storage needed?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
