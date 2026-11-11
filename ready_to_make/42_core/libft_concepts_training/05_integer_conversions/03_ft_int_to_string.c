#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_int_to_string(int n)
{
	
}

/*
GOAL:
Allocate a new decimal string representing an int.

TODO:
1. Determine sign and digit count.
2. Allocate space for digits, optional minus, and NUL.
3. Fill the string and return it.

EXPECTED OUTPUT:
-2048
0
*/

int	main(void)
{
	char	*a = ft_int_to_string(-2048);
	char	*b = ft_int_to_string(0);

	if (!a||!b)return (free(a), free(b), 1);
	printf("%s\n%s\n", a, b);
	free(a);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_int_to_string represent?
2. Why does this task require: determine sign and digit count?
3. Which boundary condition could change the result?
4. How does ft_int_to_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
