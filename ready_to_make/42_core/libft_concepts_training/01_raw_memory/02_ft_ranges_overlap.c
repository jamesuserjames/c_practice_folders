#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_ranges_overlap(const char *a, const char *b, size_t n)
{
	
}

/*
GOAL:
Determine whether two n - byte ranges overlap.

TODO:
1. Think of each range as [start, start+n).
2. Compare their positions.
3. Return 1 for overlap, otherwise 0.

EXPECTED OUTPUT:
1
0
*/

int	main(void)
{
	char	a[12] = {
		0
	};
	printf("%d\n", ft_ranges_overlap(a, a + 2, 5));
	printf("%d\n", ft_ranges_overlap(a, a + 6, 5));
	return (0);
}

/*
EDGE CASES:
Consider zero length, overlapping ranges, and valid source/destination capacity.

LEARNING CHECK:
1. What do the parameters of ft_ranges_overlap represent?
2. Why does this task require: think of each range as [start, start+n)?
3. Which boundary condition could change the result?
4. How does ft_ranges_overlap support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
