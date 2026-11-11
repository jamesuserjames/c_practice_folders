#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include "../practice_list.h"

void	ft_list_concat(t_list **a, t_list *b)
{
	
}

/*
GOAL:
Append second linked list without allocating.

TODO:
1. Find end of first list; link second list; handle empty first.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 2
*/

int	main(void)
{
	t_list	a = {1, NULL};
	t_list	b = {2, NULL};
	t_list	*head = &a;

	ft_list_concat(&head, &b);
	printf("Test 1: %d\n", head->next->value);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_list_concat represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
