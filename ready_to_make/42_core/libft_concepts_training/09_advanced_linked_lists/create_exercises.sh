#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_find_node.c <<'EXERCISE_00'
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
EXERCISE_00

cat > 01_ft_find_previous_node.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_find_previous_node(t_list *head, t_list *target)
{
	
}

/*
GOAL:
Find the node immediately preceding target.

TODO:
1. Start at head.
2. Check whether current->next equals target.
3. Return NULL if target is head or absent.

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
	t_list	*p = ft_find_previous_node(&a, &c);

	printf("%d\n", p?p->value:-1);
	printf("%d\n", ft_find_previous_node(&a, &a) == NULL);
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_find_previous_node represent?
2. Why does this task require: start at head?
3. Which boundary condition could change the result?
4. How does ft_find_previous_node support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_insert_after.c <<'EXERCISE_02'
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
EXERCISE_02

cat > 03_ft_detach_value.c <<'EXERCISE_03'
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
EXERCISE_03

cat > 04_ft_reverse_list.c <<'EXERCISE_04'
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
EXERCISE_04

cat > 05_ft_recursive_count.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

size_t	ft_recursive_count(const t_list *head)
{
	
}

/*
GOAL:
Count nodes using recursion.

TODO:
1. Base case: NULL has zero nodes.
2. Return one plus count of next.

EXPECTED OUTPUT:
3
0
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
	printf("%zu\n", ft_recursive_count(&a));
	printf("%zu\n", ft_recursive_count(NULL));
	return (0);
}

/*
EDGE CASES:
Consider empty lists, singleton lists, cycles where applicable, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_recursive_count represent?
2. Why does this task require: base case: null has zero nodes?
3. Which boundary condition could change the result?
4. How does ft_recursive_count support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_recursive_free.c <<'EXERCISE_06'
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
EXERCISE_06

cat > 07_ft_remove_all_values.c <<'EXERCISE_07'
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
EXERCISE_07

cat > 08_ft_list_middle.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include "../practice_list.h"

t_list	*ft_list_middle(t_list *head)
{
	
}

/*
GOAL:
Return middle node using slow and fast pointers.

TODO:
1. Move slow once and fast twice; return slow.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 2
*/

int	main(void)
{
	t_list	a = {1, NULL};
	t_list	b = {2, NULL};
	t_list	c = {3, NULL};

	a.next = &b;
	b.next = &c;
	printf("Test 1: %d\n", ft_list_middle(&a)->value);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_list_middle represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_list_has_cycle.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include "../practice_list.h"

int	ft_list_has_cycle(const t_list *head)
{
	
}

/*
GOAL:
Detect cycle using two pointer speeds.

TODO:
1. Move slow and fast; return 1 if they meet.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	t_list	a = {1, NULL};
	t_list	b = {2, NULL};

	a.next = &b;
	b.next = &a;
	printf("Test 1: %d\n", ft_list_has_cycle(&a));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_list_has_cycle represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_list_concat.c <<'EXERCISE_10'
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
EXERCISE_10

cat > 11_ft_list_nth.c <<'EXERCISE_11'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include "../practice_list.h"

t_list	*ft_list_nth(t_list *head, size_t index)
{
	
}

/*
GOAL:
Return node at zero - based position or NULL.

TODO:
1. Walk index links; stop at NULL.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	t_list	a = {1, NULL};
	t_list	b = {2, NULL};

	a.next = &b;
	printf("Test 1: %d\n", ft_list_nth(&a, 1) == &b);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_list_nth represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 09_advanced_linked_lists"
