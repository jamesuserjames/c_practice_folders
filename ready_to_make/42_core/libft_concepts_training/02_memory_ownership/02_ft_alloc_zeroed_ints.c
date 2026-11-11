#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	*ft_alloc_zeroed_ints(size_t n)
{
	
}

/*
GOAL:
Allocate n integers and initialize all their bytes to zero.

TODO:
1. Check multiplication overflow before malloc.
2. Allocate n * sizeof(int).
3. Zero the allocated memory.

EXPECTED OUTPUT:
Test 1: 0 0 0
*/

int	main(void)
{
	int	*a = ft_alloc_zeroed_ints(3);

	if (a)
	{
		printf("Test 1: %d %d %d\n", a[0], a[1], a[2]);
		free(a);
	}
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_alloc_zeroed_ints represent?
2. Why does this task require: check multiplication overflow before malloc?
3. Which boundary condition could change the result?
4. How does ft_alloc_zeroed_ints support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
