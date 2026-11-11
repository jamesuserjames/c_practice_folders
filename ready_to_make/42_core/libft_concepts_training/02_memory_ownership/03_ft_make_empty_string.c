#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_make_empty_string(size_t len)
{
	
}

/*
GOAL:
Allocate room for len characters plus a terminator and initialize all bytes to zero.

TODO:
1. Guard against len + 1 overflow.
2. Allocate len + 1 bytes.
3. Zero all bytes.

EXPECTED OUTPUT:
Test 1: 0 0 0 0
*/

int	main(void)
{
	char	*s = ft_make_empty_string(3);

	if (s)
	{
		printf("Test 1: %d %d %d %d\n", s[0], s[1], s[2], s[3]);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_make_empty_string represent?
2. Why does this task require: guard against len + 1 overflow?
3. Which boundary condition could change the result?
4. How does ft_make_empty_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
