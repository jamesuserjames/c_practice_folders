#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char **ft_split_words(const char	*s, char sep)
{
	
}

/*
GOAL:
Split into a NULL-terminated array of independently allocated words.

TODO:
1. Count words.
2. Allocate pointers plus NULL sentinel.
3. Allocate each word.
4. Clean up all allocations if one fails.

EXPECTED OUTPUT:
a
bb
c
*/

int	main(void)
{
	char **a = ft_split_words("a,,bb,c", ',');
	size_t	i = 0;

	if (a)
	{
		while (a[i])
		{
			printf("%s\n", a[i]);
			free(a[i++]);
		}
		free(a);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_split_words represent?
2. Why does this task require: count words?
3. Which boundary condition could change the result?
4. How does ft_split_words support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
