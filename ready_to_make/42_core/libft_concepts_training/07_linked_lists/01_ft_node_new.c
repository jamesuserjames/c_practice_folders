#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_node_new(int value)
{
	
}

/*
GOAL:
Allocate a node and initialize value and next.

TODO:
1. Allocate sizeof(t_list).
2. Store value.
3. Set next to NULL.

EXPECTED OUTPUT:
Test 1: 42 1
*/

int	main(void)
{
	t_list	*n = ft_node_new(42);

	if (n)
	{
		printf("Test 1: %d %d\n", n->value, n->next == NULL);
		free(n);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_new represent?
2. Why does this task require: allocate sizeof(t_list)?
3. Which boundary condition could change the result?
4. How does ft_node_new support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
