#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_delete_one(t_list *node)
{
	
}

/*
GOAL:
Free one heap - allocated node (not its successor).

TODO:
1. Do not traverse the list.
2. Free only node.
3. Caller is responsible for unlinking it first.

EXPECTED OUTPUT:
Test 1: deleted
*/

int	main(void)
{
	t_list	*n = malloc(sizeof(t_list));

	if (!n)return (1);
	n->value = 5;
	n->next = NULL;
	ft_node_delete_one(n);
	printf("Test 1: deleted\n");
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_delete_one represent?
2. Why does this task require: do not traverse the list?
3. Which boundary condition could change the result?
4. How does ft_node_delete_one support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
