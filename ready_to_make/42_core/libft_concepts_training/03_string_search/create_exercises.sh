#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_find_character.c <<'EXERCISE_00'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_find_character(const char *str, int c)
{
	
}

/*
GOAL:
Find the first matching character in a NUL - terminated string.

TODO:
1. Walk through str until the terminator.
2. Return a pointer to the first match.
3. Allow searching for the terminating NUL.

EXPECTED OUTPUT:
nana
1
*/

int	main(void)
{
	char	s[] = "banana";
	char	*p = ft_find_character(s, 'n');

	printf("%s\n", p?p:"missing");
	printf("%d\n", ft_find_character(s, 'z') == NULL);
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_find_character represent?
2. Why does this task require: walk through str until the terminator?
3. Which boundary condition could change the result?
4. How does ft_find_character support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_00

cat > 01_ft_find_last_character.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_find_last_character(const char *str, int c)
{
	
}

/*
GOAL:
Find the last matching character in a string.

TODO:
1. Track the most recent matching address.
2. Include the NUL byte as a possible match.

EXPECTED OUTPUT:
a
1
*/

int	main(void)
{
	char	s[] = "banana";
	char	*p = ft_find_last_character(s, 'a');

	printf("%s\n", p?p:"missing");
	printf("%d\n", ft_find_last_character(s, 'z') == NULL);
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_find_last_character represent?
2. Why does this task require: track the most recent matching address?
3. Which boundary condition could change the result?
4. How does ft_find_last_character support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_compare_strings.c <<'EXERCISE_02'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_compare_strings(const char *a, const char *b)
{
	
}

/*
GOAL:
Compare strings lexicographically.

TODO:
1. Compare bytes as unsigned char.
2. Stop at the first difference or NUL.
3. Return negative, zero, or positive.

EXPECTED OUTPUT:
0
1
1
*/

int	main(void)
{
	printf("%d\n", ft_compare_strings("abc", "abc"));
	printf("%d\n", ft_compare_strings("abc", "abd")<0);
	printf("%d\n", ft_compare_strings("abd", "abc")>0);
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_compare_strings represent?
2. Why does this task require: compare bytes as unsigned char?
3. Which boundary condition could change the result?
4. How does ft_compare_strings support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_compare_n_chars.c <<'EXERCISE_03'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_compare_n_chars(const char *a, const char *b, size_t n)
{
	
}

/*
GOAL:
Compare at most n characters of two strings.

TODO:
1. Return zero when n is zero.
2. Compare as unsigned char.
3. Stop on difference or NUL.

EXPECTED OUTPUT:
0
1
0
*/

int	main(void)
{
	printf("%d\n", ft_compare_n_chars("abc", "abd", 2));
	printf("%d\n", ft_compare_n_chars("abc", "abd", 3)<0);
	printf("%d\n", ft_compare_n_chars("a", "z", 0));
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_compare_n_chars represent?
2. Why does this task require: return zero when n is zero?
3. Which boundary condition could change the result?
4. How does ft_compare_n_chars support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_find_substring.c <<'EXERCISE_04'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_find_substring(const char *haystack, const char *needle)
{
	
}

/*
GOAL:
Find the first occurrence of needle in haystack.

TODO:
1. Try each candidate position.
2. Compare successive characters of needle.
3. Return haystack for an empty needle.

EXPECTED OUTPUT:
two three
1
*/

int	main(void)
{
	char	s[] = "one two three";
	char	*p = ft_find_substring(s, "two");

	printf("%s\n", p?p:"missing");
	printf("%d\n", ft_find_substring(s, "xyz") == NULL);
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_find_substring represent?
2. Why does this task require: try each candidate position?
3. Which boundary condition could change the result?
4. How does ft_find_substring support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_limited_search.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_limited_search(const char *haystack, const char *needle, size_t len)
{
	
}

/*
GOAL:
Find needle only if its entire match fits within len bytes.

TODO:
1. Return haystack when needle is empty.
2. Never read beyond len bytes of haystack.
3. Reject partial matches that cross the limit.

EXPECTED OUTPUT:
1
cde
*/

int	main(void)
{
	char	s[] = "abcde";

	printf("%d\n", ft_limited_search(s, "cd", 3) == NULL);
	char	*p = ft_limited_search(s, "cd", 4);

	printf("%s\n", p?p:"missing");
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_limited_search represent?
2. Why does this task require: return haystack when needle is empty?
3. Which boundary condition could change the result?
4. How does ft_limited_search support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_count_occurrences.c <<'EXERCISE_06'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_count_occurrences(const char *str, const char *needle)
{
	
}

/*
GOAL:
Count non - overlapping occurrences of a nonempty substring.

TODO:
1. Search from the current position.
2. When found, increase count and advance by needle length.
3. Return zero when needle is empty.

EXPECTED OUTPUT:
2
2
*/

int	main(void)
{
	printf("%zu\n", ft_count_occurrences("aaaa", "aa"));
	printf("%zu\n", ft_count_occurrences("banana", "na"));
	return (0);
}

/*
EDGE CASES:
Check empty strings, no match, embedded NUL, and length boundaries.

LEARNING CHECK:
1. What do the parameters of ft_count_occurrences represent?
2. Why does this task require: search from the current position?
3. Which boundary condition could change the result?
4. How does ft_count_occurrences support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_starts_with.c <<'EXERCISE_07'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_starts_with(const char *s, const char *prefix)
{
	
}

/*
GOAL:
Return 1 when s begins with prefix.

TODO:
1. Compare corresponding characters; empty prefix matches.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_starts_with("hello", "he"));

	printf("Test 2: %d\n", ft_starts_with("hello", "no"));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_starts_with represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_ends_with.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

int	ft_ends_with(const char *s, const char *suffix)
{
	
}

/*
GOAL:
Return 1 when s ends with suffix.

TODO:
1. Measure lengths; align suffix; compare.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_ends_with("hello", "lo"));

	printf("Test 2: %d\n", ft_ends_with("hello", "he"));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_ends_with represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_find_any.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_find_any(const char *s, const char *set)
{
	
}

/*
GOAL:
Find first character of s contained in set.

TODO:
1. Traverse s; test against set; return pointer or NULL.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1
*/

int	main(void)
{
	char	s[] = "hello";

	printf("Test 1: %d\n", ft_find_any(s, "xyel") == s + 1);
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_find_any represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_count_char.c <<'EXERCISE_10'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

size_t	ft_count_char(const char *s, char c)
{
	
}

/*
GOAL:
Count occurrences of a character in a string.

TODO:
1. Traverse until NUL; count matching characters.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 3
*/

int	main(void)
{
	printf("Test 1: %zu\n", ft_count_char("banana", 'a'));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_count_char represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_first_mismatch.c <<'EXERCISE_11'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

size_t	ft_first_mismatch(const char *a, const char *b)
{
	
}

/*
GOAL:
Return the index of the first differing character.

TODO:
1. Compare characters including NUL; return mismatch offset.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 2
*/

int	main(void)
{
	printf("Test 1: %zu\n", ft_first_mismatch("abc", "abx"));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_first_mismatch represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 03_string_search"
