#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char ft_apply_char(char	c, char (*f)(char))
{
	
}

/*
GOAL:
Call a function through a function pointer.

TODO:
1. Understand the f parameter.
2. Pass c to f.
3. Return the result.

EXPECTED OUTPUT:
Test 1: A
*/

static char test_upper(char c)
{
	return ((c >= 'a' && c <= 'z') ? c - 32 : c);
}

int	main(void)
{
	printf("Test 1: %c\n", ft_apply_char('a', test_upper));
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_apply_char represent?
2. Why does this task require: understand the f parameter?
3. Which boundary condition could change the result?
4. How does ft_apply_char support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
