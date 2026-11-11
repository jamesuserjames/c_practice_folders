#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_call_operation.c <<'EXERCISE_00'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_call_operation(int x, int (*operation)(int))
{
	
}

/*
GOAL:
Understand a callback as a function supplied as an argument.

TODO:
1. Receive a function pointer.
2. Call it with x.
3. Return its result.

EXPECTED OUTPUT:
Test 1: 16
*/

static int	test_square(int n)
{
	return (n*n);
}

int	main(void)
{
	printf("Test 1: %d\n", ft_call_operation(4, test_square));
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_call_operation represent?
2. Why does this task require: receive a function pointer?
3. Which boundary condition could change the result?
4. How does ft_call_operation support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_00

cat > 01_ft_apply_char.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char ft_apply_char(char	c, char (*f)(char))
{
	
}

/*
GOAL:
Call a function through a function pointer.

TODO:
1. Understand the f parameter.
2. Pass c to f.
3. Return the result.

EXPECTED OUTPUT:
Test 1: A
*/

static char test_upper(char c)
{
	return ((c >= 'a' && c <= 'z') ? c - 32 : c);
}

int	main(void)
{
	printf("Test 1: %c\n", ft_apply_char('a', test_upper));
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_apply_char represent?
2. Why does this task require: understand the f parameter?
3. Which boundary condition could change the result?
4. How does ft_apply_char support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_mutate_chars.c <<'EXERCISE_02'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_mutate_chars(char *s, void (*f)(char *))
{
	
}

/*
GOAL:
Apply a callback to every character in a string in place.

TODO:
1. Loop over the original string.
2. Pass the address of each character.
3. Do not allocate a new string.

EXPECTED OUTPUT:
Test 1: ABC
*/

static void test_upper_ptr(char *c)
{
	if (*c >= 'a' && *c <= 'z') *c -= 32;
}

int	main(void)
{
	char	s[] = "abc";

	ft_mutate_chars(s, test_upper_ptr);
	printf("Test 1: %s\n", s);
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_mutate_chars represent?
2. Why does this task require: loop over the original string?
3. Which boundary condition could change the result?
4. How does ft_mutate_chars support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_mutate_indexed.c <<'EXERCISE_03'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_mutate_indexed(char *s, void (*f)(unsigned int, char *))
{
	
}

/*
GOAL:
Pass both the index and character address to a callback.

TODO:
1. Track unsigned index.
2. Call f(index, &s[index]).
3. Preserve NUL terminator.

EXPECTED OUTPUT:
Test 1: abcd
*/

static void test_index(unsigned int i, char *c)
{
	*c = (char)(*c + i);
}

int	main(void)
{
	char	s[] = "aaaa";

	ft_mutate_indexed(s, test_index);
	printf("Test 1: %s\n", s);
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_mutate_indexed represent?
2. Why does this task require: track unsigned index?
3. Which boundary condition could change the result?
4. How does ft_mutate_indexed support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_map_chars.c <<'EXERCISE_04'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_map_chars(const char *s, char (*f)(char))
{
	
}

/*
GOAL:
Allocate a new string containing transformed characters.

TODO:
1. Allocate source length + 1.
2. Call callback on each source character.
3. Keep source unchanged.

EXPECTED OUTPUT:
Test 1: abc ABC
*/

static char test_upper(char c)
{
	return (c >= 'a' && c <= 'z') ? c - 32 : c;
}

int	main(void)
{
	char	s[] = "abc";
	char	*r = ft_map_chars(s, test_upper);

	if (r)
	{
		printf("Test 1: %s %s\n", s, r);
		free(r);
	}
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_map_chars represent?
2. Why does this task require: allocate source length + 1?
3. Which boundary condition could change the result?
4. How does ft_map_chars support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_map_indexed.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_map_indexed(const char *s, char (*f)(unsigned int, char))
{
	
}

/*
GOAL:
Create a new string where each character depends on its index.

TODO:
1. Allocate.
2. Call f(i,s[i]).
3. NUL-terminate and return.

EXPECTED OUTPUT:
Test 1: abcd
*/

static char test_index_char(unsigned int i, char c)
{
	return (char)(c + i);
}

int	main(void)
{
	char	*r = ft_map_indexed("aaaa", test_index_char);

	if (r)
	{
		printf("Test 1: %s\n", r);
		free(r);
	}
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_map_indexed represent?
2. Why does this task require: allocate?
3. Which boundary condition could change the result?
4. How does ft_map_indexed support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_visit_ints.c <<'EXERCISE_06'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_visit_ints(int *a, size_t n, void (*f)(int *))
{
	
}

/*
GOAL:
Visit array elements by pointer and let a callback modify them.

TODO:
1. Traverse array.
2. Pass each element address to f.
3. Observe changes in caller-owned array.

EXPECTED OUTPUT:
Test 1: 2 4 6
*/

static void test_double(int *n)
{
	*n *= 2;
}

int	main(void)
{
	int	a[3] = {
		1, 2, 3
	};
	ft_visit_ints(a, 3, test_double);
	printf("Test 1: %d %d %d\n", a[0], a[1], a[2]);
	return (0);
}

/*
EDGE CASES:
Only call valid function pointers; consider empty input collections.

LEARNING CHECK:
1. What do the parameters of ft_visit_ints represent?
2. Why does this task require: traverse array?
3. Which boundary condition could change the result?
4. How does ft_visit_ints support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_apply_twice.c <<'EXERCISE_07'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_apply_twice(int x, int (*f)(int))
{
	
}

/*
GOAL:
Call an integer transformation twice.

TODO:
1. Call f on x; pass its result to f; return final result.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 12
*/

static int	test_double(int n)
{
	return (n * 2);
}

static int	test_even(int n)
{
	return (n % 2 == 0);
}

static int	test_add(int a, int b)
{
	return (a + b);
}

int	main(void)
{
	printf("Test 1: %d\n", ft_apply_twice(3, test_double));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_apply_twice represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_count_if.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

size_t	ft_count_if(const int *a, size_t n, int (*pred)(int))
{
	
}

/*
GOAL:
Count array elements for which predicate is nonzero.

TODO:
1. Inspect each element; call predicate; accumulate count.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 2
*/

static int	test_double(int n)
{
	return (n * 2);
}

static int	test_even(int n)
{
	return (n % 2 == 0);
}

static int	test_add(int a, int b)
{
	return (a + b);
}

int	main(void)
{
	int	a[4] = {1, 2, 3, 4};

	printf("Test 1: %zu\n", ft_count_if(a, 4, test_even));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_count_if represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_find_if.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_find_if(const int *a, size_t n, int (*pred)(int))
{
	
}

/*
GOAL:
Return first matching index, or - 1.

TODO:
1. Iterate; call predicate; return first successful index.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 2
*/

static int	test_double(int n)
{
	return (n * 2);
}

static int	test_even(int n)
{
	return (n % 2 == 0);
}

static int	test_add(int a, int b)
{
	return (a + b);
}

int	main(void)
{
	int	a[4] = {1, 3, 4, 5};

	printf("Test 1: %d\n", ft_find_if(a, 4, test_even));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_find_if represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_reduce_ints.c <<'EXERCISE_10'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_reduce_ints(const int *a, size_t n, int init, int (*f)(int, int))
{
	
}

/*
GOAL:
Fold integer array left - to - right with callback.

TODO:
1. Start from init; combine accumulator with each value.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 6
*/

static int	test_double(int n)
{
	return (n * 2);
}

static int	test_even(int n)
{
	return (n % 2 == 0);
}

static int	test_add(int a, int b)
{
	return (a + b);
}

int	main(void)
{
	int	a[3] = {1, 2, 3};

	printf("Test 1: %d\n", ft_reduce_ints(a, 3, 0, test_add));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_reduce_ints represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_transform_array.c <<'EXERCISE_11'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	*ft_transform_array(const int	*a, size_t	n, int (*f)(int))
{
	
}

/*
GOAL:
Allocate an array of callback - transformed values.

TODO:
1. Allocate n integers; apply callback for each element.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 2 4 6
*/

static int	test_double(int n)
{
	return (n * 2);
}

static int	test_even(int n)
{
	return (n % 2 == 0);
}

static int	test_add(int a, int b)
{
	return (a + b);
}

int	main(void)
{
	int	a[3] = {1, 2, 3};
	int	*b = ft_transform_array(a, 3, test_double);

	if (b)
	{
		printf("Test 1: %d %d %d\n", b[0], b[1], b[2]);
		free(b);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_transform_array represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 06_callbacks"
