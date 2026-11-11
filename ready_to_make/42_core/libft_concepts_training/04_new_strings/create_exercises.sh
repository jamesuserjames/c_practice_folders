#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_count_chars.c <<'EXERCISE_00'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_count_chars(const char *s)
{
	
}

/*
GOAL:
Count characters without counting the terminating NUL.

TODO:
1. Start at 0.
2. Advance until NUL.
3. Return count.

EXPECTED OUTPUT:
Test 1: 5 0
*/

int	main(void)
{
	printf("Test 1: %zu %zu\n", ft_count_chars("hello"), ft_count_chars(""));
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_count_chars represent?
2. Why does this task require: start at 0?
3. Which boundary condition could change the result?
4. How does ft_count_chars support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_00

cat > 01_ft_sub_length.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_sub_length(const char *s, unsigned int start, size_t len)
{
	
}

/*
GOAL:
Calculate how many characters can actually be taken from s starting at start.

TODO:
1. Find source length.
2. If start is past the end, return 0.
3. Return the smaller of len and remaining length.

EXPECTED OUTPUT:
3
0
*/

int	main(void)
{
	printf("%zu\n", ft_sub_length("hello", 2, 10));
	printf("%zu\n", ft_sub_length("hello", 9, 2));
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_sub_length represent?
2. Why does this task require: find source length?
3. Which boundary condition could change the result?
4. How does ft_sub_length support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_extract.c <<'EXERCISE_02'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_extract(const char *s, unsigned int start, size_t len)
{
	
}

/*
GOAL:
Allocate a new substring.

TODO:
1. Determine the actual copy length.
2. Allocate length + 1.
3. Copy and terminate.

EXPECTED OUTPUT:
Test 1: cde
*/

int	main(void)
{
	char	*s = ft_extract("abcdef", 2, 3);

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_extract represent?
2. Why does this task require: determine the actual copy length?
3. Which boundary condition could change the result?
4. How does ft_extract support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_join_two.c <<'EXERCISE_03'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_join_two(const char *a, const char *b)
{
	
}

/*
GOAL:
Allocate a string containing a followed by b.

TODO:
1. Measure both lengths.
2. Allocate combined length + 1.
3. Copy a, then b, then NUL.

EXPECTED OUTPUT:
Test 1: goodbye
*/

int	main(void)
{
	char	*s = ft_join_two("good", "bye");

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_join_two represent?
2. Why does this task require: measure both lengths?
3. Which boundary condition could change the result?
4. How does ft_join_two support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_is_trim_char.c <<'EXERCISE_04'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_is_trim_char(char c, const char *set)
{
	
}

/*
GOAL:
Return 1 if c occurs in the set string, otherwise 0.

TODO:
1. Traverse set.
2. Compare each character with c.
3. Return 1 on match.

EXPECTED OUTPUT:
Test 1: 1 0 1
*/

int	main(void)
{
	printf("Test 1: %d %d %d\n", ft_is_trim_char(' ', " \t"), ft_is_trim_char('x', " \t"), ft_is_trim_char('\t', " \t"));
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_is_trim_char represent?
2. Why does this task require: traverse set?
3. Which boundary condition could change the result?
4. How does ft_is_trim_char support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_trim_bounds.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

void	ft_trim_bounds(const char *s, const char *set, size_t *start, size_t *end)
{
	
}

/*
GOAL:
Find [start, end) bounds after trimming characters in set from both ends.

TODO:
1. Move start forward while chars are in set.
2. Move end backward while chars are in set.
3. Do not underflow on empty strings.

EXPECTED OUTPUT:
Test 1: 2 7
*/

int	main(void)
{
	size_t	a = 0, b = 0;

	ft_trim_bounds("..hello...",".", &a, &b);
	printf("Test 1: %zu %zu\n", a, b);
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_trim_bounds represent?
2. Why does this task require: move start forward while chars are in set?
3. Which boundary condition could change the result?
4. How does ft_trim_bounds support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_make_trimmed.c <<'EXERCISE_06'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_make_trimmed(const char *s, const char *set)
{
	
}

/*
GOAL:
Create an allocated copy without characters in set at either end.

TODO:
1. Find trimmed start/end.
2. Allocate exact space.
3. Copy and terminate.

EXPECTED OUTPUT:
Test 1: hello
*/

int	main(void)
{
	char	*s = ft_make_trimmed("--hello--", "-");

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_make_trimmed represent?
2. Why does this task require: find trimmed start/end?
3. Which boundary condition could change the result?
4. How does ft_make_trimmed support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_count_words.c <<'EXERCISE_07'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_count_words(const char *s, char sep)
{
	
}

/*
GOAL:
Count nonempty words separated by sep.

TODO:
1. Skip separators.
2. Count the beginning of each word.
3. Skip word characters.

EXPECTED OUTPUT:
Test 1: 3 0 1
*/

int	main(void)
{
	printf("Test 1: %zu %zu %zu\n", ft_count_words("a,,bb,c", ','), ft_count_words(",,,", ','), ft_count_words("hello", ','));
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_count_words represent?
2. Why does this task require: skip separators?
3. Which boundary condition could change the result?
4. How does ft_count_words support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_copy_word.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_copy_word(const char *start, size_t len)
{
	
}

/*
GOAL:
Allocate and copy one word of exactly len characters.

TODO:
1. Allocate len + 1.
2. Copy len bytes.
3. Add NUL.

EXPECTED OUTPUT:
Test 1: cde
*/

int	main(void)
{
	char	*s = ft_copy_word("abcdef"+2, 3);

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_copy_word represent?
2. Why does this task require: allocate len + 1?
3. Which boundary condition could change the result?
4. How does ft_copy_word support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_split_words.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char **ft_split_words(const char	*s, char sep)
{
	
}

/*
GOAL:
Split into a NULL-terminated array of independently allocated words.

TODO:
1. Count words.
2. Allocate pointers plus NULL sentinel.
3. Allocate each word.
4. Clean up all allocations if one fails.

EXPECTED OUTPUT:
a
bb
c
*/

int	main(void)
{
	char **a = ft_split_words("a,,bb,c", ',');
	size_t	i = 0;

	if (a)
	{
		while (a[i])
		{
			printf("%s\n", a[i]);
			free(a[i++]);
		}
		free(a);
	}
	return (0);
}

/*
EDGE CASES:
Consider empty strings, NULL where supported, allocation failure, and free ownership.

LEARNING CHECK:
1. What do the parameters of ft_split_words represent?
2. Why does this task require: count words?
3. Which boundary condition could change the result?
4. How does ft_split_words support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_repeat_string.c <<'EXERCISE_10'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_repeat_string(const char *s, size_t times)
{
	
}

/*
GOAL:
Allocate and concatenate a string repeated times.

TODO:
1. Check product overflow; allocate NUL; copy blocks.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: ababab
*/

int	main(void)
{
	char	*s = ft_repeat_string("ab", 3);

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
1. What does each parameter in ft_repeat_string represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_join_three.c <<'EXERCISE_11'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_join_three(const char *a, const char *b, const char *c)
{
	
}

/*
GOAL:
Allocate concatenation of three strings.

TODO:
1. Compute lengths; check size; concatenate and terminate.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: abc
*/

int	main(void)
{
	char	*s = ft_join_three("a", "b", "c");

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
1. What does each parameter in ft_join_three represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 04_new_strings"
