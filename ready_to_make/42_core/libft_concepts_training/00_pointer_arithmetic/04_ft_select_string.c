#include <stddef.h>
#include <stdio.h>

const char	*ft_select_string(const char **words, size_t index)
{
	
}

/*
GOAL:
Select a string from an array of string pointers.

TODO:
1. Index into words.
2. Return the selected pointer without allocating memory.

EXPECTED OUTPUT:
Test 1: blue
*/

int	main(void)
{
	const char	*words[] = {
		"red", "blue", "green"
	};

	printf("Test 1: %s\n", ft_select_string(words, 1));
	return (0);
}

/*
EDGE CASES:
words must be valid and index must be within the array.
Do not free string literals or the returned pointer.

LEARNING CHECK:
1. What is stored in each element of words?
2. Is a new string allocated?
3. Who owns the returned string?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
