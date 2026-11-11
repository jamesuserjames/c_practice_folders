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
