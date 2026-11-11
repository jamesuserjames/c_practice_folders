#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_is_null.c <<'EXERCISE_00'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_is_null(const void *ptr)
{
	
}

/*
GOAL:
Recognize a NULL pointer without dereferencing it.

TODO:
1. Compare ptr to NULL.
2. Return 1 if NULL, otherwise 0.

EXPECTED OUTPUT:
1
0
*/

int	main(void)
{
	int	n = 1;

	printf("%d\n", ft_is_null(NULL));
	printf("%d\n", ft_is_null(&n));
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_is_null represent?
2. Why does this task require: compare ptr to null?
3. Which boundary condition could change the result?
4. How does ft_is_null support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_00

cat > 01_ft_alloc_or_null.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	*ft_alloc_or_null(size_t n)
{
	
}

/*
GOAL:
Define predictable behavior for a zero - byte allocation.

TODO:
1. Return NULL when n is zero.
2. Otherwise allocate n bytes.
3. Return NULL if allocation fails.

EXPECTED OUTPUT:
1
1
*/

int	main(void)
{
	void	*a = ft_alloc_or_null(0);
	void	*b = ft_alloc_or_null(4);

	printf("%d\n", a == NULL);
	printf("%d\n", b != NULL);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_alloc_or_null represent?
2. Why does this task require: return null when n is zero?
3. Which boundary condition could change the result?
4. How does ft_alloc_or_null support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_alloc_array.c <<'EXERCISE_02'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	*ft_alloc_array(size_t count, size_t size)
{
	
}

/*
GOAL:
Allocate count * size bytes without integer overflow.

TODO:
1. Return NULL if count or size is zero.
2. Check count > SIZE_MAX / size before multiplication.
3. Allocate the product only when safe.

EXPECTED OUTPUT:
1
1
*/

int	main(void)
{
	void	*a = ft_alloc_array(3, sizeof(int));
	void	*b = ft_alloc_array(SIZE_MAX, 2);

	printf("%d\n", a != NULL);
	printf("%d\n", b == NULL);
	free(a);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_alloc_array represent?
2. Why does this task require: return null if count or size is zero?
3. Which boundary condition could change the result?
4. How does ft_alloc_array support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_duplicate_empty_safe.c <<'EXERCISE_03'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_duplicate_empty_safe(const char *s)
{
	
}

/*
GOAL:
Duplicate an empty string correctly and reject NULL input.

TODO:
1. Return NULL for NULL input.
2. Allocate at least one byte for an empty string.
3. Copy the terminating NUL.

EXPECTED OUTPUT:
1
1
*/

int	main(void)
{
	char	*a = ft_duplicate_empty_safe("");
	char	*b = ft_duplicate_empty_safe(NULL);

	printf("%d\n", a != NULL && a[0] == '\0');
	printf("%d\n", b == NULL);
	free(a);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_duplicate_empty_safe represent?
2. Why does this task require: return null for null input?
3. Which boundary condition could change the result?
4. How does ft_duplicate_empty_safe support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_copy_bounded.c <<'EXERCISE_04'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_copy_bounded(char *dst, const char *src, size_t size)
{
	
}

/*
GOAL:
Implement strlcpy - style bounded copying.

TODO:
1. Return full source length.
2. If size > 0, copy at most size - 1 bytes.
3. NUL-terminate when size > 0.

EXPECTED OUTPUT:
5 he X
2 Z
*/

int	main(void)
{
	char	a[4] = {
		'X','X','X','X'
	};
	size_t	n = ft_copy_bounded(a, "hello", 3);

	printf("%zu %s %c\n", n, a, a[3]);
	char	b[1] = {
		'Z'
	};
	printf("%zu %c\n", ft_copy_bounded(b, "hi", 0), b[0]);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_copy_bounded represent?
2. Why does this task require: return full source length?
3. Which boundary condition could change the result?
4. How does ft_copy_bounded support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_make_two_strings.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char **ft_make_two_strings(const char	*a, const char *b)
{
	
}

/*
GOAL:
Allocate a two - string array and clean up on partial failure.

TODO:
1. Allocate a three-pointer array.
2. Duplicate both strings separately.
3. If any allocation fails, free earlier allocations and return NULL.

EXPECTED OUTPUT:
Test 1: cat dog 1
*/

int	main(void)
{
	char **p = ft_make_two_strings("cat", "dog");

	if (!p)return (1);
	printf("Test 1: %s %s %d\n", p[0], p[1], p[2] == NULL);
	free(p[0]);
	free(p[1]);
	free(p);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_make_two_strings represent?
2. Why does this task require: allocate a three-pointer array?
3. Which boundary condition could change the result?
4. How does ft_make_two_strings support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_join_owned.c <<'EXERCISE_06'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_join_owned(const char *a, const char *b)
{
	
}

/*
GOAL:
Join two strings in one owned allocation without leaking.

TODO:
1. Measure lengths safely.
2. Check for length addition overflow.
3. Allocate once, copy both strings, terminate.

EXPECTED OUTPUT:
Test 1: hello!
*/

int	main(void)
{
	char	*s = ft_join_owned("hello", "!");

	if (!s)return (1);
	printf("Test 1: %s\n", s);
	free(s);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_join_owned represent?
2. Why does this task require: measure lengths safely?
3. Which boundary condition could change the result?
4. How does ft_join_owned support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_split_spaces_safe.c <<'EXERCISE_07'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char **ft_split_spaces_safe(const char *str)
{
	
}

/*
GOAL:
Split by spaces with empty - input handling and full cleanup.

TODO:
1. Count words and allocate pointer array + terminator.
2. Allocate each word and copy its bytes.
3. On allocation failure, free every earlier word and the array.

EXPECTED OUTPUT:
a b 1
1
*/

int	main(void)
{
	char **a = ft_split_spaces_safe("  a  b ");
	char **b = ft_split_spaces_safe("");

	if (!a||!b)return (1);
	printf("%s %s %d\n", a[0], a[1], a[2] == NULL);
	printf("%d\n", b[0] == NULL);
	size_t	i = 0;

	while (a[i])free(a[i++]);
	free(a);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check NULL and zero-sized inputs, overflow, and partial allocation cleanup.

LEARNING CHECK:
1. What do the parameters of ft_split_spaces_safe represent?
2. Why does this task require: count words and allocate pointer array + terminator?
3. Which boundary condition could change the result?
4. How does ft_split_spaces_safe support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_safe_realloc_copy.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	*ft_safe_realloc_copy(const void *src, size_t old_size, size_t new_size)
{
	
}

/*
GOAL:
Allocate new buffer and copy min(old_size, new_size) bytes.

TODO:
1. Check new allocation; copy safely; do not free src.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: abc
*/

int	main(void)
{
	char	a[4] = "abc";
	char	*b = ft_safe_realloc_copy(a, 4, 8);

	if (b)
	{
		printf("Test 1: %s\n", b);
		free(b);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_safe_realloc_copy represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_safe_strndup.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_safe_strndup(const char *s, size_t max)
{
	
}

/*
GOAL:
Duplicate at most max characters into owned string.

TODO:
1. Find bounded length; allocate; copy and NUL terminate.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: hel
*/

int	main(void)
{
	char	*s = ft_safe_strndup("hello", 3);

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_safe_strndup represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_checked_concat.c <<'EXERCISE_10'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_checked_concat(const char *a, const char *b)
{
	
}

/*
GOAL:
Join strings with checked allocation size.

TODO:
1. Measure lengths; reject addition overflow; allocate and copy.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: abcd
*/

int	main(void)
{
	char	*s = ft_checked_concat("ab", "cd");

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_checked_concat represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_cleanup_partial_vector.c <<'EXERCISE_11'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	ft_cleanup_partial_vector(char **words, size_t created)
{
	
}

/*
GOAL:
Free exactly created owned strings and their array.

TODO:
1. Free only initialized elements; then the outer array.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: cleaned
*/

int	main(void)
{
	char **v = calloc(2, sizeof(char *));

	if (!v)
		return (1);
	v[0] = malloc(3);
	if (!v[0])
	{
		free(v);
		return (1);
	}
	ft_cleanup_partial_vector(v, 1);
	printf("Test 1: cleaned\n");
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_cleanup_partial_vector represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 08_memory_edge_cases"
