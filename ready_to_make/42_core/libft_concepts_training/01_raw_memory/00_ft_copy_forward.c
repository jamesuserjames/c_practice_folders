#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_copy_forward(char *dst, const char *src, int n)
{
	
}

/*
GOAL:
Copy exactly n bytes from src to dst using a forward loop.

TODO:
1. Start at index 0.
2. Copy one byte at a time.
3. Stop after n bytes.

EXPECTED OUTPUT:
Test 1: abc.
*/

int	main(void)
{
	char	src[] = "abcd";
	char	dst[5] = "....";

	ft_copy_forward(dst, src, 3);
	printf("Test 1: %.4s\n", dst);
	return (0);
}

/*
EDGE CASES:
Consider zero length, overlapping ranges, and valid source/destination capacity.

LEARNING CHECK:
1. What do the parameters of ft_copy_forward represent?
2. Why does this task require: start at index 0?
3. Which boundary condition could change the result?
4. How does ft_copy_forward support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
