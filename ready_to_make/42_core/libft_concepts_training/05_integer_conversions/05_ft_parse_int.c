#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_parse_int(const char *str)
{
	
}

/*
GOAL:
Implement atoi - like parsing of whitespace, sign and digits.

TODO:
1. Skip ASCII whitespace.
2. Read one optional sign.
3. Accumulate digits until a nondigit.

EXPECTED OUTPUT:
-42
17
0
*/

int	main(void)
{
	printf("%d\n", ft_parse_int("  -42"));
	printf("%d\n", ft_parse_int("+17abc"));
	printf("%d\n", ft_parse_int("xyz"));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_parse_int represent?
2. Why does this task require: skip ascii whitespace?
3. Which boundary condition could change the result?
4. How does ft_parse_int support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
