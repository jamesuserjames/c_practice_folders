#include <stdio.h>

void	ft_replace_pointer(int **target, int *replacement)
{
	
}

/*
GOAL:
Change a pointer in the caller using a pointer-to-pointer.

TODO:
1. Assign replacement through target.
2. Do not modify either integer.

EXPECTED OUTPUT:
Test 1: 9
*/

int	main(void)
{
	int	a = 7;
	int	b = 9;
	int	*p = &a;

	ft_replace_pointer(&p, &b);
	printf("Test 1: %d\n", *p);
	return (0);
}

/*
EDGE CASES:
target must be valid; replacement may be NULL, but then do not
try to dereference the resulting pointer.

LEARNING CHECK:
1. Why is target an int **?
2. Are the integer values changed?
3. Which pointer actually changes?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
