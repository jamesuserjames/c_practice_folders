#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	*ft_alloc_ints(int count)
{
	
}

/*
GOAL:
Allocate memory for count integers.

TODO:
1. Reject count <= 0.
2. Allocate count * sizeof(int).
3. Return NULL on failure.

EXPECTED OUTPUT:
7 8 9
1
*/

int	main(void)
{
	int	*a = ft_alloc_ints(3);

	if (a)
	{
		a[0] = 7;
		a[1] = 8;
		a[2] = 9;
		printf("%d %d %d\n", a[0], a[1], a[2]);
		free(a);
	}
	printf("%d\n", ft_alloc_ints(0) == NULL);
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_alloc_ints represent?
2. Why does this task require: reject count <= 0?
3. Which boundary condition could change the result?
4. How does ft_alloc_ints support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
