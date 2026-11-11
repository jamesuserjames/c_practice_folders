#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_copy_backward(char *dst, const char *src, int n)
{
	
}

/*
GOAL:
Copy n bytes from the end toward the beginning.

TODO:
1. Begin at n.
2. Decrease the index before copying.
3. Copy byte n-1 down to 0.

EXPECTED OUTPUT:
Test 1: abcd
*/

int	main(void)
{
	char	src[] = "abcd";
	char	dst[5] = "....";

	ft_copy_backward(dst, src, 4);
	printf("Test 1: %s\n", dst);
	return (0);
}

/*
EDGE CASES:
Consider zero length, overlapping ranges, and valid source/destination capacity.

LEARNING CHECK:
1. What do the parameters of ft_copy_backward represent?
2. Why does this task require: begin at n?
3. Which boundary condition could change the result?
4. How does ft_copy_backward support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
