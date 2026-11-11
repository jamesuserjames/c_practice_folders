#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_node_map(t_list *head, int (*f)(int))
{
	
}

/*
GOAL:
Create a separate linked list containing transformed values.

TODO:
1. Walk source.
2. Allocate a fresh node for each value.
3. Link result nodes.
4. Free partial result if allocation fails.

EXPECTED OUTPUT:
Test 1: 1 4
*/

static int	test_square(int n)
{
	return n*n;
}

static void	test_free_nodes(t_list *head)
{
	t_list	*next;

	while (head)
	{
		next = head->next;
		free(head);
		head = next;
	}
}

int	main(void)
{
	t_list	second = {2, NULL};
	t_list	first = {1, &second};
	t_list	*result;

	result = ft_node_map(&first, test_square);
	if (!result)
		return (1);
	if (!result->next)
	{
		test_free_nodes(result);
		return (1);
	}
	printf("Test 1: %d %d\n", result->value, result->next->value);
	test_free_nodes(result);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_map represent?
2. Why does this task require: walk source?
3. Which boundary condition could change the result?
4. How does ft_node_map support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
