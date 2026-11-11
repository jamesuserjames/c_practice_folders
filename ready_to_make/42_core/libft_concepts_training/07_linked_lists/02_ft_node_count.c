#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

size_t	ft_node_count(t_list *head)
{
	
}

/*
GOAL:
Count nodes by following next pointers.

TODO:
1. Start with head.
2. Increment count for each node.
3. Stop at NULL.

EXPECTED OUTPUT:
Test 1: 3 0
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
	printf("Test 1: %zu %zu\n", ft_node_count(&a), ft_node_count(NULL));
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_count represent?
2. Why does this task require: start with head?
3. Which boundary condition could change the result?
4. How does ft_node_count support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
