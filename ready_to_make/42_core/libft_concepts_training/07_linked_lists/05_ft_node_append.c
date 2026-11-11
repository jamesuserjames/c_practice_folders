#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_append(t_list **head, t_list *new_node)
{
	
}

/*
GOAL:
Attach a node to the end, including empty - list case.

TODO:
1. Handle *head == NULL.
2. Otherwise find last.
3. Set last->next.

EXPECTED OUTPUT:
Test 1: 1 2
*/

int	main(void)
{
	t_list	a = {
		1, NULL
	}, b =
	{
		2, NULL
	};
	t_list	*head = &a;

	ft_node_append(&head, &b);
	printf("Test 1: %d %d\n", head->value, head->next->value);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_append represent?
2. Why does this task require: handle *head == null?
3. Which boundary condition could change the result?
4. How does ft_node_append support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
