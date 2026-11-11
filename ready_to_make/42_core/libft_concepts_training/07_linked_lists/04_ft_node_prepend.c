#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_prepend(t_list **head, t_list *new_node)
{
	
}

/*
GOAL:
Make new_node the first element.

TODO:
1. Link new_node to old head.
2. Update *head.
3. Understand why head is a double pointer.

EXPECTED OUTPUT:
Test 1: 2 1
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

	ft_node_prepend(&head, &b);
	printf("Test 1: %d %d\n", head->value, head->next->value);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_prepend represent?
2. Why does this task require: link new_node to old head?
3. Which boundary condition could change the result?
4. How does ft_node_prepend support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
