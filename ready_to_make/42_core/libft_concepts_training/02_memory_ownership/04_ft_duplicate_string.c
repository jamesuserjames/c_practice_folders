#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_duplicate_string(const char *src)
{
	
}

/*
GOAL:
Make an independently owned copy of a string.

TODO:
1. Count source length.
2. Allocate length + 1.
3. Copy including the terminator.

EXPECTED OUTPUT:
Test 1: bat cat
*/

int	main(void)
{
	char	original[] = "cat";
	char	*copy = ft_duplicate_string(original);

	if (copy)
	{
		original[0] = 'b';
		printf("Test 1: %s %s\n", original, copy);
		free(copy);
	}
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_duplicate_string represent?
2. Why does this task require: count source length?
3. Which boundary condition could change the result?
4. How does ft_duplicate_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
