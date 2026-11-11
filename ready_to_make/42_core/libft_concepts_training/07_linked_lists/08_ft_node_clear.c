#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_clear(t_list **head)
{
	
}

/*
GOAL:
Free every node and set head to NULL.

TODO:
1. Save next before freeing current.
2. Free current.
3. Continue until NULL.
4. Set *head = NULL.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	t_list	*a = malloc(sizeof(t_list));
	t_list	*b = malloc(sizeof(t_list));

	if (!a||!b)
	{
		free(a);
		free(b);
		return (1);
	}
	a->next = b;
	b->next = NULL;
	ft_node_clear(&a);
	printf("Test 1: %d\n", a == NULL);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_clear represent?
2. Why does this task require: save next before freeing current?
3. Which boundary condition could change the result?
4. How does ft_node_clear support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
