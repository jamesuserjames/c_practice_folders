#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_detach_value(t_list **head, int value)
{
	
}

/*
GOAL:
Detach the first node with value, without freeing it.

TODO:
1. Handle removal of the head.
2. Relink the previous node around the match.
3. Set detached node->next to NULL and return it.

EXPECTED OUTPUT:
Test 1: 1 3 2
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
	t_list	*p = &a;
	t_list	*out = ft_detach_value(&p, 2);

	printf("Test 1: %d %d %d\n", p->value, p->next->value, out?out->value:-1);
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_detach_value represent?
2. Why does this task require: handle removal of the head?
3. Which boundary condition could change the result?
4. How does ft_detach_value support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
