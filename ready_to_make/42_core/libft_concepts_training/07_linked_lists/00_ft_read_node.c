#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

int	ft_read_node(t_list *node)
{
	
}

/*
GOAL:
Return the integer value stored in a node.

TODO:
1. Understand node->value.
2. Return its value.

EXPECTED OUTPUT:
Test 1: 17
*/

int	main(void)
{
	t_list	n = {
		17, NULL
	};
	printf("Test 1: %d\n", ft_read_node(&n));
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_read_node represent?
2. Why does this task require: understand node->value?
3. Which boundary condition could change the result?
4. How does ft_read_node support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
