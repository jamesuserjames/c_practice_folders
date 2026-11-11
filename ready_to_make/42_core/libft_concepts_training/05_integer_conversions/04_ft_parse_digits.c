#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

unsigned int	ft_parse_digits(const char *digits)
{
	
}

/*
GOAL:
Parse a nonempty sequence of decimal digits.

TODO:
1. Start with value zero.
2. Multiply the accumulated value by ten.
3. Add the next digit value.

EXPECTED OUTPUT:
1234
7
*/

int	main(void)
{
	printf("%u\n", ft_parse_digits("1234"));
	printf("%u\n", ft_parse_digits("007"));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_parse_digits represent?
2. Why does this task require: start with value zero?
3. Which boundary condition could change the result?
4. How does ft_parse_digits support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
