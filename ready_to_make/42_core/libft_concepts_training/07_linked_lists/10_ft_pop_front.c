#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_pop_front(t_list **head)
{
	
}

/*
GOAL:
Remove the first heap - allocated node safely.

TODO:
1. Check head and *head.
2. Save old first node.
3. Move head to next.
4. Free old node.

EXPECTED OUTPUT:
Test 1: 2
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
	a->value = 1;
	a->next = b;
	b->value = 2;
	b->next = NULL;
	ft_pop_front(&a);
	printf("Test 1: %d\n", a->value);
	free(a);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_pop_front represent?
2. Why does this task require: check head and *head?
3. Which boundary condition could change the result?
4. How does ft_pop_front support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
