#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

size_t	ft_recursive_count(const t_list *head)
{
	
}

/*
GOAL:
Count nodes using recursion.

TODO:
1. Base case: NULL has zero nodes.
2. Return one plus count of next.

EXPECTED OUTPUT:
3
0
*/

int	main(void)
{
	t_list	c = {
		3, NULL
	}, b =
	{
		2, &c
	}, a =
	{
		1, &b
	};
	printf("%zu\n", ft_recursive_count(&a));
	printf("%zu\n", ft_recursive_count(NULL));
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_recursive_count represent?
2. Why does this task require: base case: null has zero nodes?
3. Which boundary condition could change the result?
4. How does ft_recursive_count support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
