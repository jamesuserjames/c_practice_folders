#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_copy_forward.c <<'EXERCISE_00'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_copy_forward(char *dst, const char *src, int n)
{
	
}

/*
GOAL:
Copy exactly n bytes from src to dst using a forward loop.

TODO:
1. Start at index 0.
2. Copy one byte at a time.
3. Stop after n bytes.

EXPECTED OUTPUT:
Test 1: abc.
*/

int	main(void)
{
	char	src[] = "abcd";
	char	dst[5] = "....";

	ft_copy_forward(dst, src, 3);
	printf("Test 1: %.4s\n", dst);
	return (0);
}

/*
EDGE CASES:
Consider zero length, overlapping ranges, and valid source/destination capacity.

LEARNING CHECK:
1. What do the parameters of ft_copy_forward represent?
2. Why does this task require: start at index 0?
3. Which boundary condition could change the result?
4. How does ft_copy_forward support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_00

cat > 01_ft_copy_backward.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_copy_backward(char *dst, const char *src, int n)
{
	
}

/*
GOAL:
Copy n bytes from the end toward the beginning.

TODO:
1. Begin at n.
2. Decrease the index before copying.
3. Copy byte n-1 down to 0.

EXPECTED OUTPUT:
Test 1: abcd
*/

int	main(void)
{
	char	src[] = "abcd";
	char	dst[5] = "....";

	ft_copy_backward(dst, src, 4);
	printf("Test 1: %s\n", dst);
	return (0);
}

/*
EDGE CASES:
Consider zero length, overlapping ranges, and valid source/destination capacity.

LEARNING CHECK:
1. What do the parameters of ft_copy_backward represent?
2. Why does this task require: begin at n?
3. Which boundary condition could change the result?
4. How does ft_copy_backward support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_ranges_overlap.c <<'EXERCISE_02'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_ranges_overlap(const char *a, const char *b, size_t n)
{
	
}

/*
GOAL:
Determine whether two n - byte ranges overlap.

TODO:
1. Think of each range as [start, start+n).
2. Compare their positions.
3. Return 1 for overlap, otherwise 0.

EXPECTED OUTPUT:
1
0
*/

int	main(void)
{
	char	a[12] = {
		0
	};
	printf("%d\n", ft_ranges_overlap(a, a + 2, 5));
	printf("%d\n", ft_ranges_overlap(a, a + 6, 5));
	return (0);
}

/*
EDGE CASES:
Consider zero length, overlapping ranges, and valid source/destination capacity.

LEARNING CHECK:
1. What do the parameters of ft_ranges_overlap represent?
2. Why does this task require: think of each range as [start, start+n)?
3. Which boundary condition could change the result?
4. How does ft_ranges_overlap support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_move_bytes.c <<'EXERCISE_03'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	*ft_move_bytes(void *dst, const void *src, size_t n)
{
	
}

/*
GOAL:
Implement memmove - like copying that survives overlapping regions.

TODO:
1. Cast to unsigned char pointers.
2. Decide when backward copying is necessary.
3. Copy exactly n bytes.
4. Return dst.

EXPECTED OUTPUT:
ababcd
cdefef
*/

int	main(void)
{
	char	a[12] = "abcdef";

	ft_move_bytes(a + 2, a, 4);
	printf("%s\n", a);
	char	b[12] = "abcdef";

	ft_move_bytes(b, b + 2, 4);
	printf("%s\n", b);
	return (0);
}

/*
EDGE CASES:
Consider zero length, overlapping ranges, and valid source/destination capacity.

LEARNING CHECK:
1. What do the parameters of ft_move_bytes represent?
2. Why does this task require: cast to unsigned char pointers?
3. Which boundary condition could change the result?
4. How does ft_move_bytes support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_set_bytes.c <<'EXERCISE_04'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	*ft_set_bytes(void *dst, unsigned char byte, size_t n)
{
	
}

/*
GOAL:
Fill n bytes with the supplied byte.

TODO:
1. Treat memory as unsigned char; write n bytes; return dst.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: AAAA
*/

int	main(void)
{
	unsigned char	a[4] = {0};

	ft_set_bytes(a, 0x41, 4);
	printf("Test 1: %c%c%c%c\n", a[0], a[1], a[2], a[3]);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_set_bytes represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_compare_bytes.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_compare_bytes(const void *a, const void *b, size_t n)
{
	
}

/*
GOAL:
Compare byte sequences lexicographically.

TODO:
1. Compare unsigned bytes; return first difference; stop at n.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	unsigned char	a[3] = {1, 2, 3};
	unsigned char	b[3] = {1, 2, 4};

	printf("Test 1: %d\n", ft_compare_bytes(a, b, 3) < 0);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_compare_bytes represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_find_byte.c <<'EXERCISE_06'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	*ft_find_byte(const void *src, unsigned char byte, size_t n)
{
	
}

/*
GOAL:
Find a byte within a bounded memory region.

TODO:
1. Inspect bytes; return matching address or NULL.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char	s[] = "abcd";

	printf("Test 1: %d\n", ft_find_byte(s, 'c', 4) == s + 2);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_find_byte represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_copy_bytes.c <<'EXERCISE_07'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	*ft_copy_bytes(void *dst, const void *src, size_t n)
{
	
}

/*
GOAL:
Copy bytes between non - overlapping regions.

TODO:
1. Copy exactly n unsigned bytes; return destination.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: abcd
*/

int	main(void)
{
	char	a[5] = {0};

	ft_copy_bytes(a, "abcd", 5);
	printf("Test 1: %s\n", a);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_copy_bytes represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_compare_regions.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_regions_equal(const void *a, const void *b, size_t n)
{
	
}

/*
GOAL:
Return whether two byte regions are identical.

TODO:
1. Inspect every byte; return 0 on a difference and 1 otherwise.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_regions_equal("abc", "abc", 3));

	printf("Test 2: %d\n", ft_regions_equal("abc", "abd", 3));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_compare_regions represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_zero_region.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	ft_clear_region(void *dst, size_t n)
{
	
}

/*
GOAL:
Zero exactly n bytes of an object.

TODO:
1. Cast to unsigned char; zero each byte; stop at n.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 0 0 0
*/

int	main(void)
{
	unsigned char	a[3] = {1, 2, 3};

	ft_clear_region(a, 3);
	printf("Test 1: %u %u %u\n", a[0], a[1], a[2]);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_zero_region represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_byte_checksum.c <<'EXERCISE_10'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

unsigned int	ft_byte_checksum(const void *src, size_t n)
{
	
}

/*
GOAL:
Compute the sum of bytes modulo UINT_MAX + 1.

TODO:
1. Read unsigned bytes; accumulate into unsigned int.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 6
*/

int	main(void)
{
	unsigned char	a[3] = {1, 2, 3};

	printf("Test 1: %u\n", ft_byte_checksum(a, 3));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_byte_checksum represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_reverse_bytes.c <<'EXERCISE_11'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

void	ft_reverse_bytes(unsigned char *a, size_t n)
{
	
}

/*
GOAL:
Reverse bytes in place.

TODO:
1. Swap symmetric bytes from ends toward center.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 4 3 2 1
*/

int	main(void)
{
	unsigned char	a[4] = {1, 2, 3, 4};

	ft_reverse_bytes(a, 4);
	printf("Test 1: %u %u %u %u\n", a[0], a[1], a[2], a[3]);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_reverse_bytes represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 01_raw_memory"
