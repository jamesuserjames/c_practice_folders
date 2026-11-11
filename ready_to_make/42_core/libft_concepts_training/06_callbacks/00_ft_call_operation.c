#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_call_operation(int x, int (*operation)(int))
{
	
}

/*
GOAL:
Understand a callback as a function supplied as an argument.

TODO:
1. Receive a function pointer.
2. Call it with x.
3. Return its result.

EXPECTED OUTPUT:
Test 1: 16
*/

static int	test_square(int n)
{
	return (n*n);
}

int	main(void)
{
	printf("Test 1: %d\n", ft_call_operation(4, test_square));
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_call_operation represent?
2. Why does this task require: receive a function pointer?
3. Which boundary condition could change the result?
4. How does ft_call_operation support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
