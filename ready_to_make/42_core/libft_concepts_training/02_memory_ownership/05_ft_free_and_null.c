#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_free_and_null(void **ptr)
{
	
}

/*
GOAL:
Free an allocated pointer and set the caller’s pointer to NULL.

TODO:
1. Check ptr itself.
2. Free *ptr.
3. Assign NULL to *ptr.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char	*p = malloc(4);

	if (!p)return (1);
	ft_free_and_null((void **)&p);
	printf("Test 1: %d\n", p == NULL);
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_free_and_null represent?
2. Why does this task require: check ptr itself?
3. Which boundary condition could change the result?
4. How does ft_free_and_null support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
