#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_sub_length(const char *s, unsigned int start, size_t len)
{
	
}

/*
GOAL:
Calculate how many characters can actually be taken from s starting at start.

TODO:
1. Find source length.
2. If start is past the end, return 0.
3. Return the smaller of len and remaining length.

EXPECTED OUTPUT:
3
0
*/

int	main(void)
{
	printf("%zu\n", ft_sub_length("hello", 2, 10));
	printf("%zu\n", ft_sub_length("hello", 9, 2));
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_sub_length represent?
2. Why does this task require: find source length?
3. Which boundary condition could change the result?
4. How does ft_sub_length support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
