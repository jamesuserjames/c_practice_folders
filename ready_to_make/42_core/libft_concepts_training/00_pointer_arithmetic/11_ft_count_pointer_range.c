#include <stddef.h>
#include <stdio.h>

size_t	ft_count_pointer_range(const int *begin, const int *end)
{
	
}

/*
GOAL:
Count the elements in a half - open pointer range [begin, end).

TODO:
1. Subtract begin from end.
2. Return the number of elements as size_t.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
*/

int	main(void)
{
	int	a[] = {0, 0, 0, 0, 0};

	printf("Test 1: %zu\n", ft_count_pointer_range(a, a + 5));

	printf("Test 2: %zu\n", ft_count_pointer_range(a, a));
	return (0);
}

/*
EDGE CASES:
Both pointers must belong to the same array (or be one past it).
end must not come before begin. The difference must fit in size_t.

LEARNING CHECK:
1. Why does an empty range have length zero?
2. Is end included in the range?
3. How is this different from signed pointer distance?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
