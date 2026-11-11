#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_alloc_ints.c <<'EXERCISE_00'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	*ft_alloc_ints(int count)
{
	
}

/*
GOAL:
Allocate memory for count integers.

TODO:
1. Reject count <= 0.
2. Allocate count * sizeof(int).
3. Return NULL on failure.

EXPECTED OUTPUT:
7 8 9
1
*/

int	main(void)
{
	int	*a = ft_alloc_ints(3);

	if (a)
	{
		a[0] = 7;
		a[1] = 8;
		a[2] = 9;
		printf("%d %d %d\n", a[0], a[1], a[2]);
		free(a);
	}
	printf("%d\n", ft_alloc_ints(0) == NULL);
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_alloc_ints represent?
2. Why does this task require: reject count <= 0?
3. Which boundary condition could change the result?
4. How does ft_alloc_ints support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_00

cat > 01_ft_zero_bytes.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_zero_bytes(void *ptr, size_t n)
{
	
}

/*
GOAL:
Set exactly n bytes to zero.

TODO:
1. Cast void * to unsigned char *.
2. Walk through the n bytes.
3. Assign 0 to each byte.

EXPECTED OUTPUT:
Test 1: 0 0 0 6
*/

int	main(void)
{
	unsigned char	a[4] =
	{
		9, 8, 7, 6
	};
	ft_zero_bytes(a, 3);
	printf("Test 1: %u %u %u %u\n", a[0], a[1], a[2], a[3]);
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_zero_bytes represent?
2. Why does this task require: cast void * to unsigned char *?
3. Which boundary condition could change the result?
4. How does ft_zero_bytes support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_alloc_zeroed_ints.c <<'EXERCISE_02'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	*ft_alloc_zeroed_ints(size_t n)
{
	
}

/*
GOAL:
Allocate n integers and initialize all their bytes to zero.

TODO:
1. Check multiplication overflow before malloc.
2. Allocate n * sizeof(int).
3. Zero the allocated memory.

EXPECTED OUTPUT:
Test 1: 0 0 0
*/

int	main(void)
{
	int	*a = ft_alloc_zeroed_ints(3);

	if (a)
	{
		printf("Test 1: %d %d %d\n", a[0], a[1], a[2]);
		free(a);
	}
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_alloc_zeroed_ints represent?
2. Why does this task require: check multiplication overflow before malloc?
3. Which boundary condition could change the result?
4. How does ft_alloc_zeroed_ints support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_make_empty_string.c <<'EXERCISE_03'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_make_empty_string(size_t len)
{
	
}

/*
GOAL:
Allocate room for len characters plus a terminator and initialize all bytes to zero.

TODO:
1. Guard against len + 1 overflow.
2. Allocate len + 1 bytes.
3. Zero all bytes.

EXPECTED OUTPUT:
Test 1: 0 0 0 0
*/

int	main(void)
{
	char	*s = ft_make_empty_string(3);

	if (s)
	{
		printf("Test 1: %d %d %d %d\n", s[0], s[1], s[2], s[3]);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_make_empty_string represent?
2. Why does this task require: guard against len + 1 overflow?
3. Which boundary condition could change the result?
4. How does ft_make_empty_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_duplicate_string.c <<'EXERCISE_04'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_duplicate_string(const char *src)
{
	
}

/*
GOAL:
Make an independently owned copy of a string.

TODO:
1. Count source length.
2. Allocate length + 1.
3. Copy including the terminator.

EXPECTED OUTPUT:
Test 1: bat cat
*/

int	main(void)
{
	char	original[] = "cat";
	char	*copy = ft_duplicate_string(original);

	if (copy)
	{
		original[0] = 'b';
		printf("Test 1: %s %s\n", original, copy);
		free(copy);
	}
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_duplicate_string represent?
2. Why does this task require: count source length?
3. Which boundary condition could change the result?
4. How does ft_duplicate_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_free_and_null.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_free_and_null(void **ptr)
{
	
}

/*
GOAL:
Free an allocated pointer and set the caller’s pointer to NULL.

TODO:
1. Check ptr itself.
2. Free *ptr.
3. Assign NULL to *ptr.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char	*p = malloc(4);

	if (!p)return (1);
	ft_free_and_null((void **)&p);
	printf("Test 1: %d\n", p == NULL);
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_free_and_null represent?
2. Why does this task require: check ptr itself?
3. Which boundary condition could change the result?
4. How does ft_free_and_null support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_delete_string.c <<'EXERCISE_06'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_delete_string(char **s)
{
	
}

/*
GOAL:
Release a heap - allocated string and clear its pointer.

TODO:
1. Check s.
2. Free *s.
3. Set *s to NULL.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char	*s = malloc(4);

	if (!s)return (1);
	ft_delete_string(&s);
	printf("Test 1: %d\n", s == NULL);
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_delete_string represent?
2. Why does this task require: check s?
3. Which boundary condition could change the result?
4. How does ft_delete_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_copy_or_null.c <<'EXERCISE_07'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_copy_or_null(const char *src)
{
	
}

/*
GOAL:
Return an owned copy of src, or NULL for NULL input.

TODO:
1. Decide who owns the returned memory.
2. Handle NULL input.
3. Copy the string into a fresh allocation.

EXPECTED OUTPUT:
hello
1
*/

int	main(void)
{
	char	*s = ft_copy_or_null("hello");

	if (s)
	{
		printf("%s\n", s);
		free(s);
	}
	printf("%d\n", ft_copy_or_null(NULL) == NULL);
	return (0);
}

/*
EDGE CASES:
Check allocation failure, NULL arguments, and who releases allocated memory.

LEARNING CHECK:
1. What do the parameters of ft_copy_or_null represent?
2. Why does this task require: decide who owns the returned memory?
3. Which boundary condition could change the result?
4. How does ft_copy_or_null support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_allocate_one_int.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	*ft_allocate_one_int(int value)
{
	
}

/*
GOAL:
Allocate and initialize a single integer.

TODO:
1. Allocate sizeof(int); check failure; assign the value.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 42
*/

int	main(void)
{
	int	*p = ft_allocate_one_int(42);

	if (p)
	{
		printf("Test 1: %d\n", *p);
		free(p);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_allocate_one_int represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_allocate_copy.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	*ft_allocate_int_copy(const int	*src, size_t n)
{
	
}

/*
GOAL:
Allocate and copy n integers.

TODO:
1. Check allocation size; copy elements; return owned array.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1 2 3
*/

int	main(void)
{
	int	a[3] = {1, 2, 3};
	int	*p = ft_allocate_int_copy(a, 3);

	if (p)
	{
		printf("Test 1: %d %d %d\n", p[0], p[1], p[2]);
		free(p);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_allocate_copy represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_replace_owned_string.c <<'EXERCISE_10'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_replace_owned_string(char **dst, const char *src)
{
	
}

/*
GOAL:
Replace an owned string with a newly allocated copy.

TODO:
1. Allocate before freeing old string; report allocation failure.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: new
*/

int	main(void)
{
	char	*s = malloc(4);

	if (!s)
		return (1);
	memcpy(s, "old", 4);
	if (ft_replace_owned_string(&s, "new") == 0)
		printf("Test 1: %s\n", s);
	free(s);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_replace_owned_string represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_free_string_vector.c <<'EXERCISE_11'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	ft_free_string_vector(char ***strings)
{
	
}

/*
GOAL:
Free a NULL-terminated owned string vector and clear pointer.

TODO:
1. Free each word; free vector; set caller pointer to NULL.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char **v = malloc(2 * sizeof(char *));

	if (!v)
		return (1);
	v[0] = malloc(3);
	v[1] = NULL;
	if (!v[0])
	{
		free(v);
		return (1);
	}
	memcpy(v[0], "hi", 3);
	ft_free_string_vector(&v);
	printf("Test 1: %d\n", v == NULL);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_free_string_vector represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 02_memory_ownership"
