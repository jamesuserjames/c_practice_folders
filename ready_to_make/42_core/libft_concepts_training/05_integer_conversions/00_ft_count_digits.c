#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_count_digits(unsigned int n)
{
	
}

/*
GOAL:
Count decimal digits, including one digit for zero.

TODO:
1. Start with a count of one.
2. Divide n by ten until it is below ten.

EXPECTED OUTPUT:
1
5
*/

int	main(void)
{
	printf("%zu\n", ft_count_digits(0));
	printf("%zu\n", ft_count_digits(12345));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_count_digits represent?
2. Why does this task require: start with a count of one?
3. Which boundary condition could change the result?
4. How does ft_count_digits support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
