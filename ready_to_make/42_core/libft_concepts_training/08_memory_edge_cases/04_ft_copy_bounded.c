#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_copy_bounded(char *dst, const char *src, size_t size)
{
	
}

/*
GOAL:
Implement strlcpy - style bounded copying.

TODO:
1. Return full source length.
2. If size > 0, copy at most size - 1 bytes.
3. NUL-terminate when size > 0.

EXPECTED OUTPUT:
5 he X
2 Z
*/

int	main(void)
{
	char	a[4] = {
		'X','X','X','X'
	};
	size_t	n = ft_copy_bounded(a, "hello", 3);

	printf("%zu %s %c\n", n, a, a[3]);
	char	b[1] = {
		'Z'
	};
	printf("%zu %c\n", ft_copy_bounded(b, "hi", 0), b[0]);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_copy_bounded represent?
2. Why does this task require: return full source length?
3. Which boundary condition could change the result?
4. How does ft_copy_bounded support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
