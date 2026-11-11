#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_visit_ints(int *a, size_t n, void (*f)(int *))
{
	
}

/*
GOAL:
Visit array elements by pointer and let a callback modify them.

TODO:
1. Traverse array.
2. Pass each element address to f.
3. Observe changes in caller-owned array.

EXPECTED OUTPUT:
Test 1: 2 4 6
*/

static void test_double(int *n)
{
	*n *= 2;
}

int	main(void)
{
	int	a[3] = {
		1, 2, 3
	};
	ft_visit_ints(a, 3, test_double);
	printf("Test 1: %d %d %d\n", a[0], a[1], a[2]);
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_visit_ints represent?
2. Why does this task require: traverse array?
3. Which boundary condition could change the result?
4. How does ft_visit_ints support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
