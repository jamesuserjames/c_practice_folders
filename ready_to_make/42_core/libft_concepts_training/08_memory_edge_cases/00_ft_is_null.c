#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_is_null(const void *ptr)
{
	
}

/*
GOAL:
Recognize a NULL pointer without dereferencing it.

TODO:
1. Compare ptr to NULL.
2. Return 1 if NULL, otherwise 0.

EXPECTED OUTPUT:
1
0
*/

int	main(void)
{
	int	n = 1;

	printf("%d\n", ft_is_null(NULL));
	printf("%d\n", ft_is_null(&n));
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_is_null represent?
2. Why does this task require: compare ptr to null?
3. Which boundary condition could change the result?
4. How does ft_is_null support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
