#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	*ft_alloc_array(size_t count, size_t size)
{
	
}

/*
GOAL:
Allocate count * size bytes without integer overflow.

TODO:
1. Return NULL if count or size is zero.
2. Check count > SIZE_MAX / size before multiplication.
3. Allocate the product only when safe.

EXPECTED OUTPUT:
1
1
*/

int	main(void)
{
	void	*a = ft_alloc_array(3, sizeof(int));
	void	*b = ft_alloc_array(SIZE_MAX, 2);

	printf("%d\n", a != NULL);
	printf("%d\n", b == NULL);
	free(a);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_alloc_array represent?
2. Why does this task require: return null if count or size is zero?
3. Which boundary condition could change the result?
4. How does ft_alloc_array support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
