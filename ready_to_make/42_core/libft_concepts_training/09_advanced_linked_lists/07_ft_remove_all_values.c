#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_remove_all_values(t_list *head, int value)
{
	
}

/*
GOAL:
Unlink every node with a given value without freeing nodes.

TODO:
1. Skip matching nodes at the head.
2. Traverse and bypass matching successors.
3. Return the first retained node or NULL.

EXPECTED OUTPUT:
Test 1: 3 1
*/

int	main(void)
{
	t_list	d = {
		2, NULL
	}, c =
	{
		3, &d
	}, b =
	{
		2, &c
	}, a =
	{
		2, &b
	};
	t_list	*p = ft_remove_all_values(&a, 2);

	printf("Test 1: %d %d\n", p?p->value:-1, p&&p->next == NULL);
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_remove_all_values represent?
2. Why does this task require: skip matching nodes at the head?
3. Which boundary condition could change the result?
4. How does ft_remove_all_values support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
