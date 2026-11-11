#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_is_trim_char(char c, const char *set)
{
	
}

/*
GOAL:
Return 1 if c occurs in the set string, otherwise 0.

TODO:
1. Traverse set.
2. Compare each character with c.
3. Return 1 on match.

EXPECTED OUTPUT:
Test 1: 1 0 1
*/

int	main(void)
{
	printf("Test 1: %d %d %d\n", ft_is_trim_char(' ', " \t"), ft_is_trim_char('x', " \t"), ft_is_trim_char('\t', " \t"));
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_is_trim_char represent?
2. Why does this task require: traverse set?
3. Which boundary condition could change the result?
4. How does ft_is_trim_char support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
