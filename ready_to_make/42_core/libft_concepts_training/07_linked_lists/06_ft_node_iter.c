#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_iter(t_list *head, void (*f)(int *))
{
	
}

/*
GOAL:
Apply callback to each node value.

TODO:
1. Walk node by node.
2. Call f(&node->value).
3. Move to next.

EXPECTED OUTPUT:
Test 1: 2 4
*/

static void test_double(int *n)
{
	*n *= 2;
}

int	main(void)
{
	t_list	b = {
		2, NULL
	}, a =
	{
		1, &b
	};
	ft_node_iter(&a, test_double);
	printf("Test 1: %d %d\n", a.value, b.value);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_iter represent?
2. Why does this task require: walk node by node?
3. Which boundary condition could change the result?
4. How does ft_node_iter support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
