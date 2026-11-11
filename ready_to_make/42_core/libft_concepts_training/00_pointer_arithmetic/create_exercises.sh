#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_read_pointer.c <<'EXERCISE_00'
#include <stdio.h>

int	ft_read_pointer(const int *ptr)
{
	
}

/*
GOAL:
Read an integer through a pointer.

TODO:
1. Dereference ptr.
2. Return its value without changing it.

EXPECTED OUTPUT:
Test 1: 42
*/

int	main(void)
{
	int	n = 42;

	printf("Test 1: %d\n", ft_read_pointer(&n));
	return (0);
}

/*
EDGE CASES:
ptr must point to a valid int. Do not dereference NULL.

LEARNING CHECK:
1. What does *ptr mean?
2. Does reading through ptr change n?
3. Who owns the integer?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_00

cat > 01_ft_move_pointer.c <<'EXERCISE_01'
#include <stdio.h>

int	*ft_move_pointer(int *ptr, int steps)
{
	
}

/*
GOAL:
Move a pointer by a signed number of array elements.

TODO:
1. Use pointer arithmetic with steps.
2. Return the resulting pointer.

EXPECTED OUTPUT:
Test 1: 30
Test 2: 20
*/

int	main(void)
{
	int	a[] = {10, 20, 30, 40, 50};

	printf("Test 1: %d\n", *ft_move_pointer(a, 2));

	printf("Test 2: %d\n", *ft_move_pointer(a + 4, -3));
	return (0);
}

/*
EDGE CASES:
The resulting pointer must remain in the same array or one past it.
Only dereference pointers that point to actual elements.

LEARNING CHECK:
1. Does adding 1 move by one byte or one int?
2. What does a negative step do?
3. When can you safely dereference the returned pointer?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_array_distance.c <<'EXERCISE_02'
#include <stdio.h>

int	ft_array_distance(const int *start, const int *end)
{
	
}

/*
GOAL:
Calculate the signed distance between two array positions.

TODO:
1. Subtract start from end.
2. Return the distance in elements.

EXPECTED OUTPUT:
Test 1: 4
Test 2: -2
Test 3: 0
*/

int	main(void)
{
	int	a[] = {3, 5, 7, 9, 11};

	printf("Test 1: %d\n", ft_array_distance(&a[0], &a[4]));

	printf("Test 2: %d\n", ft_array_distance(&a[3], &a[1]));
	printf("Test 3: %d\n", ft_array_distance(&a[2], &a[2]));
	return (0);
}

/*
EDGE CASES:
Both pointers must refer to the same array (or one past it).
For this exercise, assume the element distance fits in int.

LEARNING CHECK:
1. Why is the distance measured in elements, not bytes?
2. How can the result become negative?
3. Why can you not subtract pointers to unrelated arrays?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_replace_pointer.c <<'EXERCISE_03'
#include <stdio.h>

void	ft_replace_pointer(int **target, int *replacement)
{
	
}

/*
GOAL:
Change a pointer in the caller using a pointer-to-pointer.

TODO:
1. Assign replacement through target.
2. Do not modify either integer.

EXPECTED OUTPUT:
Test 1: 9
*/

int	main(void)
{
	int	a = 7;
	int	b = 9;
	int	*p = &a;

	ft_replace_pointer(&p, &b);
	printf("Test 1: %d\n", *p);
	return (0);
}

/*
EDGE CASES:
target must be valid; replacement may be NULL, but then do not
try to dereference the resulting pointer.

LEARNING CHECK:
1. Why is target an int **?
2. Are the integer values changed?
3. Which pointer actually changes?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_select_string.c <<'EXERCISE_04'
#include <stddef.h>
#include <stdio.h>

const char	*ft_select_string(const char **words, size_t index)
{
	
}

/*
GOAL:
Select a string from an array of string pointers.

TODO:
1. Index into words.
2. Return the selected pointer without allocating memory.

EXPECTED OUTPUT:
Test 1: blue
*/

int	main(void)
{
	const char	*words[] = {
		"red", "blue", "green"
	};

	printf("Test 1: %s\n", ft_select_string(words, 1));
	return (0);
}

/*
EDGE CASES:
words must be valid and index must be within the array.
Do not free string literals or the returned pointer.

LEARNING CHECK:
1. What is stored in each element of words?
2. Is a new string allocated?
3. Who owns the returned string?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_allocate_string_array.c <<'EXERCISE_05'
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
EXERCISE_05

cat > 06_ft_free_string_array.c <<'EXERCISE_06'
#include <stdlib.h>
#include <stdio.h>

void	ft_free_string_array(char **words)
{
	
}

/*
GOAL:
Free a NULL-terminated heap array of heap - allocated strings.

TODO:
1. Return immediately if words is NULL.
2. Free each string until the NULL terminator.
3. Free the outer array.

EXPECTED OUTPUT:
Test 1: freed
*/

int	main(void)
{
	char	**a;

	a = malloc(3 * sizeof(*a));
	if (a == NULL)
		return (1);
	a[0] = malloc(4);
	a[1] = malloc(4);
	a[2] = NULL;
	if (a[0] == NULL || a[1] == NULL)
		return (free(a[0]), free(a[1]), free(a), 1);
	ft_free_string_array(a);
	printf("Test 1: freed\n");
	return (0);
}

/*
EDGE CASES:
Accept NULL input. Each non - NULL element and the outer array
must have been dynamically allocated and not already freed.

LEARNING CHECK:
1. Why do you free inner strings before the outer array?
2. How does the loop know when to stop?
3. Can you use words after freeing it?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_reverse_ints.c <<'EXERCISE_07'
#include <stdio.h>

void	ft_reverse_ints(int *begin, int *end)
{
	
}

/*
GOAL:
Reverse an integer array using pointer arithmetic.

TODO:
1. Treat end as one past the last element.
2. Swap the elements at the two ends.
3. Move the pointers toward each other until they meet.

EXPECTED OUTPUT:
Test 1: 4 3 2 1
*/

int	main(void)
{
	int	a[] = {1, 2, 3, 4};
	int	i;

	i = 0;
	ft_reverse_ints(a, a + 4);
	printf("Test 1: ");
	while (i < 4)
	{
		printf("%d", a[i]);
		if (i < 3)
			printf(" ");
		i++;
	}
	printf("\n");
	return (0);
}

/*
EDGE CASES:
The range [begin, end) must belong to the same array.
Handle empty and single - element ranges without dereferencing end.

LEARNING CHECK:
1. Why is end one past the final element?
2. When should the swapping stop?
3. Is extra array storage needed?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_pointer_to_first.c <<'EXERCISE_08'
#include <stdio.h>

int	ft_pointer_to_first(const int *arr)
{
	
}

/*
GOAL:
Return the first integer through an array pointer.

TODO:
1. Dereference the first element.
2. Return its value without changing the array.

EXPECTED OUTPUT:
Test 1: 4
*/

int	main(void)
{
	int	a[] = {4, 5, 6};

	printf("Test 1: %d\n", ft_pointer_to_first(a));
	return (0);
}

/*
EDGE CASES:
arr must point to an existing integer; an empty array is invalid.

LEARNING CHECK:
1. Why can arr be used like a pointer?
2. Is arr[0] equivalent to *arr?
3. Does this function allocate memory?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_pointer_to_last.c <<'EXERCISE_09'
#include <stddef.h>
#include <stdio.h>

int	ft_pointer_to_last(const int *arr, size_t size)
{
	
}

/*
GOAL:
Read the final element of an array using pointer arithmetic.

TODO:
1. Return 0 when size is 0 or arr is NULL.
2. Move to the element at index size - 1.
3. Dereference and return its value.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 0
*/

int	main(void)
{
	int	a[] = {4, 5, 6};

	printf("Test 1: %d\n", ft_pointer_to_last(a, 3));

	printf("Test 2: %d\n", ft_pointer_to_last(a, 0));
	return (0);
}

/*
EDGE CASES:
Return 0 for empty or NULL input. Otherwise, size must not
exceed the number of accessible array elements.

LEARNING CHECK:
1. Why do we use size - 1 rather than size?
2. What happens if size is zero and we subtract 1?
3. Is the array modified?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_swap_pointees.c <<'EXERCISE_10'
#include <stdio.h>

void	ft_swap_pointees(int *a, int *b)
{
	
}

/*
GOAL:
Swap the integer values referenced by two pointers.

TODO:
1. Save the first value in a temporary integer.
2. Copy the second value into the first.
3. Copy the saved value into the second.

EXPECTED OUTPUT:
Test 1: 7 3
*/

int	main(void)
{
	int	a = 3;
	int	b = 7;

	ft_swap_pointees(&a, &b);
	printf("Test 1: %d %d\n", a, b);
	return (0);
}

/*
EDGE CASES:
Both pointers must be valid. Swapping a value with itself is safe.

LEARNING CHECK:
1. Why is a temporary variable useful?
2. Are the pointers themselves swapped?
3. What happens when a and b point to the same integer?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_count_pointer_range.c <<'EXERCISE_11'
#include <stddef.h>
#include <stdio.h>

size_t	ft_count_pointer_range(const int *begin, const int *end)
{
	
}

/*
GOAL:
Count the elements in a half - open pointer range [begin, end).

TODO:
1. Subtract begin from end.
2. Return the number of elements as size_t.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
*/

int	main(void)
{
	int	a[] = {0, 0, 0, 0, 0};

	printf("Test 1: %zu\n", ft_count_pointer_range(a, a + 5));

	printf("Test 2: %zu\n", ft_count_pointer_range(a, a));
	return (0);
}

/*
EDGE CASES:
Both pointers must belong to the same array (or be one past it).
end must not come before begin. The difference must fit in size_t.

LEARNING CHECK:
1. Why does an empty range have length zero?
2. Is end included in the range?
3. How is this different from signed pointer distance?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 00_pointer_arithmetic"
