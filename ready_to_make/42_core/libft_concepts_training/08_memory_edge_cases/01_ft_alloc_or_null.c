#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	*ft_alloc_or_null(size_t n)
{
	
}

/*
GOAL:
Define predictable behavior for a zero - byte allocation.

TODO:
1. Return NULL when n is zero.
2. Otherwise allocate n bytes.
3. Return NULL if allocation fails.

EXPECTED OUTPUT:
1
1
*/

int	main(void)
{
	void	*a = ft_alloc_or_null(0);
	void	*b = ft_alloc_or_null(4);

	printf("%d\n", a == NULL);
	printf("%d\n", b != NULL);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_alloc_or_null represent?
2. Why does this task require: return null when n is zero?
3. Which boundary condition could change the result?
4. How does ft_alloc_or_null support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
