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
