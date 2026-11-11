#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>

char	**ft_allocate_string_array(size_t count)
{
	
}

/*
GOAL:
Allocate an array of count + 1 NULL string pointers.

TODO:
1. Guard against allocation-size overflow.
2. Allocate space for count + 1 pointers.
3. Initialize every pointer to NULL.
4. Return NULL if allocation fails.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char	**a;

	a = ft_allocate_string_array(2);
	if (a == NULL)
		return (1);
	printf("Test 1: %d\n", a[0] == NULL && a[1] == NULL
		&& a[2] == NULL);
	free(a);
	return (0);
}

/*
EDGE CASES:
Handle allocation failure and counts too large to allocate.
The caller owns the returned array and must free it.

LEARNING CHECK:
1. Why allocate count + 1 pointers?
2. What does sizeof(*a) mean?
3. Why initialize each entry to NULL?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
