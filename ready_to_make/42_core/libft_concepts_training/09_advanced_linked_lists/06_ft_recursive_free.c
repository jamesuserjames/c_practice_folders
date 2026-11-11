#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_recursive_free(t_list *head)
{
	
}

/*
GOAL:
Free a heap - allocated linked list recursively.

TODO:
1. Base case: head is NULL.
2. Recurse into head->next.
3. Free the current node exactly once.

EXPECTED OUTPUT:
Test 1: freed
*/

int	main(void)
{
	t_list	*a = malloc(sizeof(*a)), *b = malloc(sizeof(*b));

	if (!a||!b)return (free(a), free(b), 1);
	a->value = 1;
	a->next = b;
	b->value = 2;
	b->next = NULL;
	ft_recursive_free(a);
	printf("Test 1: freed\n");
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_recursive_free represent?
2. Why does this task require: base case: head is null?
3. Which boundary condition could change the result?
4. How does ft_recursive_free support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
