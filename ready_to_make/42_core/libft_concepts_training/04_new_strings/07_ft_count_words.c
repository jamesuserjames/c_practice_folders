#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_count_words(const char *s, char sep)
{
	
}

/*
GOAL:
Count nonempty words separated by sep.

TODO:
1. Skip separators.
2. Count the beginning of each word.
3. Skip word characters.

EXPECTED OUTPUT:
Test 1: 3 0 1
*/

int	main(void)
{
	printf("Test 1: %zu %zu %zu\n", ft_count_words("a,,bb,c", ','), ft_count_words(",,,", ','), ft_count_words("hello", ','));
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_count_words represent?
2. Why does this task require: skip separators?
3. Which boundary condition could change the result?
4. How does ft_count_words support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
