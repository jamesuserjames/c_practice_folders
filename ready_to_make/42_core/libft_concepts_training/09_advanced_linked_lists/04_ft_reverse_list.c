#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_reverse_list(t_list *head)
{
	
}

/*
GOAL:
Reverse next pointers in a singly linked list.

TODO:
1. Track previous, current and next.
2. Redirect each next pointer.
3. Return the new head.

EXPECTED OUTPUT:
Test 1: 3 2 1
*/

int	main(void)
{
	t_list	c = {
		3, NULL
	}, b =
	{
		2, &c
	}, a =
	{
		1, &b
	};
	t_list	*p = ft_reverse_list(&a);

	while (p)
	{
		printf("Test 1: %d%s", p->value, p->next?" ":"\n");
		p = p->next;
	}
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_reverse_list represent?
2. Why does this task require: track previous, current and next?
3. Which boundary condition could change the result?
4. How does ft_reverse_list support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
