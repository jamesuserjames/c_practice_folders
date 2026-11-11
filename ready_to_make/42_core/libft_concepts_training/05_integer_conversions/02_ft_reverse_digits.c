#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

unsigned int	ft_reverse_digits(unsigned int n)
{
	
}

/*
GOAL:
Reverse decimal digits numerically.

TODO:
1. Extract the last digit using modulo ten.
2. Append it to the result.
3. Remove the last digit from n.

EXPECTED OUTPUT:
4321
21
*/

int	main(void)
{
	printf("%u\n", ft_reverse_digits(1234));
	printf("%u\n", ft_reverse_digits(120));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_reverse_digits represent?
2. Why does this task require: extract the last digit using modulo ten?
3. Which boundary condition could change the result?
4. How does ft_reverse_digits support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
