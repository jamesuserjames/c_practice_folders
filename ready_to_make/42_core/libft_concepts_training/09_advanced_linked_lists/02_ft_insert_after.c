#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_insert_after(t_list *position, t_list *node)
{
	
}

/*
GOAL:
Insert an existing node after position.

TODO:
1. Save position->next.
2. Link position to node.
3. Link node to the old successor.

EXPECTED OUTPUT:
Test 1: 1 2 3
*/

int	main(void)
{
	t_list	c = {
		3, NULL
	}, a =
	{
		1, &c
	}, b =
	{
		2, NULL
	};
	ft_insert_after(&a, &b);
	printf("Test 1: %d %d %d\n", a.value, a.next->value, a.next->next->value);
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_insert_after represent?
2. Why does this task require: save position->next?
3. Which boundary condition could change the result?
4. How does ft_insert_after support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
