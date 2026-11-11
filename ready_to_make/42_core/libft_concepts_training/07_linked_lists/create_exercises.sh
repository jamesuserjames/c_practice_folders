#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_read_node.c <<'EXERCISE_00'
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
EXERCISE_00

cat > 01_ft_node_new.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_node_new(int value)
{
	
}

/*
GOAL:
Allocate a node and initialize value and next.

TODO:
1. Allocate sizeof(t_list).
2. Store value.
3. Set next to NULL.

EXPECTED OUTPUT:
Test 1: 42 1
*/

int	main(void)
{
	t_list	*n = ft_node_new(42);

	if (n)
	{
		printf("Test 1: %d %d\n", n->value, n->next == NULL);
		free(n);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_new represent?
2. Why does this task require: allocate sizeof(t_list)?
3. Which boundary condition could change the result?
4. How does ft_node_new support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_node_count.c <<'EXERCISE_02'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

size_t	ft_node_count(t_list *head)
{
	
}

/*
GOAL:
Count nodes by following next pointers.

TODO:
1. Start with head.
2. Increment count for each node.
3. Stop at NULL.

EXPECTED OUTPUT:
Test 1: 3 0
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
	printf("Test 1: %zu %zu\n", ft_node_count(&a), ft_node_count(NULL));
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_count represent?
2. Why does this task require: start with head?
3. Which boundary condition could change the result?
4. How does ft_node_count support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_node_last.c <<'EXERCISE_03'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_node_last(t_list *head)
{
	
}

/*
GOAL:
Return the last node or NULL for an empty list.

TODO:
1. Handle empty list.
2. Follow next while it exists.
3. Return last node.

EXPECTED OUTPUT:
Test 1: 2 1
*/

int	main(void)
{
	t_list	b = {
		2, NULL
	}, a =
	{
		1, &b
	};
	t_list	*n = ft_node_last(&a);

	printf("Test 1: %d %d\n", n?n->value:-1, ft_node_last(NULL) == NULL);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_last represent?
2. Why does this task require: handle empty list?
3. Which boundary condition could change the result?
4. How does ft_node_last support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_node_prepend.c <<'EXERCISE_04'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_prepend(t_list **head, t_list *new_node)
{
	
}

/*
GOAL:
Make new_node the first element.

TODO:
1. Link new_node to old head.
2. Update *head.
3. Understand why head is a double pointer.

EXPECTED OUTPUT:
Test 1: 2 1
*/

int	main(void)
{
	t_list	a = {
		1, NULL
	}, b =
	{
		2, NULL
	};
	t_list	*head = &a;

	ft_node_prepend(&head, &b);
	printf("Test 1: %d %d\n", head->value, head->next->value);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_prepend represent?
2. Why does this task require: link new_node to old head?
3. Which boundary condition could change the result?
4. How does ft_node_prepend support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_node_append.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_append(t_list **head, t_list *new_node)
{
	
}

/*
GOAL:
Attach a node to the end, including empty - list case.

TODO:
1. Handle *head == NULL.
2. Otherwise find last.
3. Set last->next.

EXPECTED OUTPUT:
Test 1: 1 2
*/

int	main(void)
{
	t_list	a = {
		1, NULL
	}, b =
	{
		2, NULL
	};
	t_list	*head = &a;

	ft_node_append(&head, &b);
	printf("Test 1: %d %d\n", head->value, head->next->value);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_append represent?
2. Why does this task require: handle *head == null?
3. Which boundary condition could change the result?
4. How does ft_node_append support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_node_iter.c <<'EXERCISE_06'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_iter(t_list *head, void (*f)(int *))
{
	
}

/*
GOAL:
Apply callback to each node value.

TODO:
1. Walk node by node.
2. Call f(&node->value).
3. Move to next.

EXPECTED OUTPUT:
Test 1: 2 4
*/

static void test_double(int *n)
{
	*n *= 2;
}

int	main(void)
{
	t_list	b = {
		2, NULL
	}, a =
	{
		1, &b
	};
	ft_node_iter(&a, test_double);
	printf("Test 1: %d %d\n", a.value, b.value);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_iter represent?
2. Why does this task require: walk node by node?
3. Which boundary condition could change the result?
4. How does ft_node_iter support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_node_delete_one.c <<'EXERCISE_07'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_delete_one(t_list *node)
{
	
}

/*
GOAL:
Free one heap - allocated node (not its successor).

TODO:
1. Do not traverse the list.
2. Free only node.
3. Caller is responsible for unlinking it first.

EXPECTED OUTPUT:
Test 1: deleted
*/

int	main(void)
{
	t_list	*n = malloc(sizeof(t_list));

	if (!n)return (1);
	n->value = 5;
	n->next = NULL;
	ft_node_delete_one(n);
	printf("Test 1: deleted\n");
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_delete_one represent?
2. Why does this task require: do not traverse the list?
3. Which boundary condition could change the result?
4. How does ft_node_delete_one support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_node_clear.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_node_clear(t_list **head)
{
	
}

/*
GOAL:
Free every node and set head to NULL.

TODO:
1. Save next before freeing current.
2. Free current.
3. Continue until NULL.
4. Set *head = NULL.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	t_list	*a = malloc(sizeof(t_list));
	t_list	*b = malloc(sizeof(t_list));

	if (!a||!b)
	{
		free(a);
		free(b);
		return (1);
	}
	a->next = b;
	b->next = NULL;
	ft_node_clear(&a);
	printf("Test 1: %d\n", a == NULL);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_clear represent?
2. Why does this task require: save next before freeing current?
3. Which boundary condition could change the result?
4. How does ft_node_clear support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_node_map.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

t_list	*ft_node_map(t_list *head, int (*f)(int))
{
	
}

/*
GOAL:
Create a separate linked list containing transformed values.

TODO:
1. Walk source.
2. Allocate a fresh node for each value.
3. Link result nodes.
4. Free partial result if allocation fails.

EXPECTED OUTPUT:
Test 1: 1 4
*/

static int	test_square(int n)
{
	return n*n;
}

static void	test_free_nodes(t_list *head)
{
	t_list	*next;

	while (head)
	{
		next = head->next;
		free(head);
		head = next;
	}
}

int	main(void)
{
	t_list	second = {2, NULL};
	t_list	first = {1, &second};
	t_list	*result;

	result = ft_node_map(&first, test_square);
	if (!result)
		return (1);
	if (!result->next)
	{
		test_free_nodes(result);
		return (1);
	}
	printf("Test 1: %d %d\n", result->value, result->next->value);
	test_free_nodes(result);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_node_map represent?
2. Why does this task require: walk source?
3. Which boundary condition could change the result?
4. How does ft_node_map support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_pop_front.c <<'EXERCISE_10'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>
#include "../practice_list.h"

void	ft_pop_front(t_list **head)
{
	
}

/*
GOAL:
Remove the first heap - allocated node safely.

TODO:
1. Check head and *head.
2. Save old first node.
3. Move head to next.
4. Free old node.

EXPECTED OUTPUT:
Test 1: 2
*/

int	main(void)
{
	t_list	*a = malloc(sizeof(t_list));
	t_list	*b = malloc(sizeof(t_list));

	if (!a||!b)
	{
		free(a);
		free(b);
		return (1);
	}
	a->value = 1;
	a->next = b;
	b->value = 2;
	b->next = NULL;
	ft_pop_front(&a);
	printf("Test 1: %d\n", a->value);
	free(a);
	return (0);
}

/*
EDGE CASES:
Consider empty and single-node lists, pointer links, and ownership.

LEARNING CHECK:
1. What do the parameters of ft_pop_front represent?
2. Why does this task require: check head and *head?
3. Which boundary condition could change the result?
4. How does ft_pop_front support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_node_contains.c <<'EXERCISE_11'
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
EXERCISE_11

echo "Reset 12 exercises in 07_linked_lists"
