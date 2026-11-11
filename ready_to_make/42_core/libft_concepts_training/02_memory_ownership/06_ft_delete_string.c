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
