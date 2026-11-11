#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

unsigned int	ft_unsigned_magnitude(int n)
{
	
}

/*
GOAL:
Get the magnitude of an int without overflowing on INT_MIN.

TODO:
1. Convert through a wider signed type or use safe unsigned arithmetic.
2. Return the positive magnitude as unsigned int.

EXPECTED OUTPUT:
42
0
2147483648
*/

int	main(void)
{
	printf("%u\n", ft_unsigned_magnitude(-42));
	printf("%u\n", ft_unsigned_magnitude(0));
	printf("%u\n", ft_unsigned_magnitude(INT_MIN));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_unsigned_magnitude represent?
2. Why does this task require: convert through a wider signed type or use safe unsigned arithmetic?
3. Which boundary condition could change the result?
4. How does ft_unsigned_magnitude support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
