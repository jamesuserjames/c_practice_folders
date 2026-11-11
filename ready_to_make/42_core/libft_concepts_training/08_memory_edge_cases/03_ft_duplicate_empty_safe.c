#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_duplicate_empty_safe(const char *s)
{
	
}

/*
GOAL:
Duplicate an empty string correctly and reject NULL input.

TODO:
1. Return NULL for NULL input.
2. Allocate at least one byte for an empty string.
3. Copy the terminating NUL.

EXPECTED OUTPUT:
1
1
*/

int	main(void)
{
	char	*a = ft_duplicate_empty_safe("");
	char	*b = ft_duplicate_empty_safe(NULL);

	printf("%d\n", a != NULL && a[0] == '\0');
	printf("%d\n", b == NULL);
	free(a);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_duplicate_empty_safe represent?
2. Why does this task require: return null for null input?
3. Which boundary condition could change the result?
4. How does ft_duplicate_empty_safe support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
