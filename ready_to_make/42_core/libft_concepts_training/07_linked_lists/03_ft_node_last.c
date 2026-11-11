#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_node_last(t_list *head)
{
	
}

/*
GOAL:
Return the last node or NULL for an empty list.

TODO:
1. Handle empty list.
2. Follow next while it exists.
3. Return last node.

EXPECTED OUTPUT:
Test 1: 2 1
*/

int	main(void)
{
	t_list	b = {
		2, NULL
	}, a =
	{
		1, &b
	};
	t_list	*n = ft_node_last(&a);

	printf("Test 1: %d %d\n", n?n->value:-1, ft_node_last(NULL) == NULL);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_last represent?
2. Why does this task require: handle empty list?
3. Which boundary condition could change the result?
4. How does ft_node_last support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
