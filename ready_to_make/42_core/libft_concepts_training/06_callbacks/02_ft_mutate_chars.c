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
