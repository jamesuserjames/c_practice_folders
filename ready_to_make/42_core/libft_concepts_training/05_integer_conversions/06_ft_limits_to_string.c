#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_limits_to_string(int n)
{
	
}

/*
GOAL:
Convert the full signed int range to newly allocated strings.

TODO:
1. Handle the negative sign without negating INT_MIN as int.
2. Allocate enough bytes.
3. Terminate each string with NUL.

EXPECTED OUTPUT:
-2147483648
2147483647
*/

int	main(void)
{
	char	*a = ft_limits_to_string(INT_MIN);
	char	*b = ft_limits_to_string(INT_MAX);

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
1. What do the parameters of ft_limits_to_string represent?
2. Why does this task require: handle the negative sign without negating int_min as int?
3. Which boundary condition could change the result?
4. How does ft_limits_to_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
