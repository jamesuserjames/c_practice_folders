#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_find_node(t_list *head, int value)
{
	
}

/*
GOAL:
Find the first node containing value.

TODO:
1. Traverse nodes using next.
2. Compare each node value.
3. Return NULL when no match exists.

EXPECTED OUTPUT:
2
1
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
	t_list	*p = ft_find_node(&a, 2);

	printf("%d\n", p?p->value:-1);
	printf("%d\n", ft_find_node(&a, 8) == NULL);
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_find_node represent?
2. Why does this task require: traverse nodes using next?
3. Which boundary condition could change the result?
4. How does ft_find_node support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
