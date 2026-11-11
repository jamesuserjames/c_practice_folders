#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include "../practice_list.h"

int	ft_node_contains(t_list *head, int value)
{
	
}

/*
GOAL:
Test whether a value exists in a linked list.

TODO:
1. Traverse nodes; return 1 on matching value, else 0.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	t_list	a = {1, NULL};
	t_list	b = {2, NULL};

	a.next = &b;
	printf("Test 1: %d\n", ft_node_contains(&a, 2));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_node_contains represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
