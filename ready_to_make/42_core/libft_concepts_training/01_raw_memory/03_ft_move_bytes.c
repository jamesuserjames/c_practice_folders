#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	*ft_move_bytes(void *dst, const void *src, size_t n)
{
	
}

/*
GOAL:
Implement memmove - like copying that survives overlapping regions.

TODO:
1. Cast to unsigned char pointers.
2. Decide when backward copying is necessary.
3. Copy exactly n bytes.
4. Return dst.

EXPECTED OUTPUT:
ababcd
cdefef
*/

int	main(void)
{
	char	a[12] = "abcdef";

	ft_move_bytes(a + 2, a, 4);
	printf("%s\n", a);
	char	b[12] = "abcdef";

	ft_move_bytes(b, b + 2, 4);
	printf("%s\n", b);
	return (0);
}

/*
EDGE CASES:
Consider zero length, overlapping ranges, and valid source/destination capacity.

LEARNING CHECK:
1. What do the parameters of ft_move_bytes represent?
2. Why does this task require: cast to unsigned char pointers?
3. Which boundary condition could change the result?
4. How does ft_move_bytes support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
