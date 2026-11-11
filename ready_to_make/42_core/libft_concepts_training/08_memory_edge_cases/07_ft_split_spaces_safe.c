#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char **ft_split_spaces_safe(const char *str)
{
	
}

/*
GOAL:
Split by spaces with empty - input handling and full cleanup.

TODO:
1. Count words and allocate pointer array + terminator.
2. Allocate each word and copy its bytes.
3. On allocation failure, free every earlier word and the array.

EXPECTED OUTPUT:
a b 1
1
*/

int	main(void)
{
	char **a = ft_split_spaces_safe("  a  b ");
	char **b = ft_split_spaces_safe("");

	if (!a||!b)return (1);
	printf("%s %s %d\n", a[0], a[1], a[2] == NULL);
	printf("%d\n", b[0] == NULL);
	size_t	i = 0;

	while (a[i])free(a[i++]);
	free(a);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_split_spaces_safe represent?
2. Why does this task require: count words and allocate pointer array + terminator?
3. Which boundary condition could change the result?
4. How does ft_split_spaces_safe support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
