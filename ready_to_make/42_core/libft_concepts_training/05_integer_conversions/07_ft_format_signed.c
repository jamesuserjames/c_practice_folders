#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_format_signed(int n, unsigned int min_width)
{
	
}

/*
GOAL:
Format an integer into a newly allocated, space - padded string.

TODO:
1. Convert n into decimal characters.
2. Compute spaces required for the minimum width.
3. Left-pad with spaces and preserve the minus sign.

EXPECTED OUTPUT:
[  -42]
[  7]
*/

int	main(void)
{
	char	*a = ft_format_signed(-42, 5);
	char	*b = ft_format_signed(7, 3);

	if (!a||!b)return (free(a), free(b), 1);
	printf("[%s]\n[%s]\n", a, b);
	free(a);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_format_signed represent?
2. Why does this task require: convert n into decimal characters?
3. Which boundary condition could change the result?
4. How does ft_format_signed support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
